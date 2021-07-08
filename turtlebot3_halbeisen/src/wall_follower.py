#CODE INSPIRATION FROM: https://www.theconstructsim.com/wall-follower-algorithm/
#https://github.com/thek1d/turtlebot/blob/main/src/wall_follower.py
#http://www2.ece.ohio-state.edu/~zhang/RoboticsClass/docs/ECE5463_ROSTutorialLecture3.pdf

#! /usr/bin/env python

# import ros stuff
import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf import transformations
from enum import Enum

#state enum for turtlebot3
class Turtlebot3State(Enum):
    FIND_WALL = 0
    TURN_LEFT = 1
    TURN_RIGHT = 2
    ROTATE = 3

#initialize turtlebot3 state


class WallFollower(object):
    def __init__(self, safestopdist=2):
        self.turtlebot3_state = Turtlebot3State.FIND_WALL
        self.msg = Twist()
        self.subscriber = rospy.Subscriber('/scan', LaserScan, self.laser_callback)
        self.regions = regions = {
                                    'right': 0,
                                    'fright': 0,
                                    'front': 0,
                                    'fleft': 0,
                                    'left': 0,
                                }
        self.d = safestopdist
        print('Distance '+str(self.d))
        print('Initialized')

    #callback method of lidar laser
    def laser_callback(self, msg):
        self.regions = {
                            'right':  min(msg.ranges[270], 3.5),
                            'fright': min(min(msg.ranges[306:341]), 3.5),
                            'front':  min(min(msg.ranges[0:342]+msg.ranges[17:0]), 3.5),
                            'fleft':  min(min(msg.ranges[18:54]), 3.5),
                            'left':   min(msg.ranges[90], 3.5),
                        }
        print('Front '+str(self.regions['front']))
        print('Fleft '+str(self.regions['fleft']))
        print('Left '+str(self.regions['left']))
        print('Fright '+str(self.regions['fright']))
        print('Right '+str(self.regions['right']))
        self.change_state()

    #change state of turtlebot3
    def set_state(self, state):
        if state is not self.turtlebot3_state:
            self.turtlebot3_state = state

    def change_state(self):
        state_description = ''
        if self.regions['front'] > self.d and self.regions['fleft'] > self.d and self.regions['fright'] > self.d:
            state_description = 'case 1 - nothing'
            self.set_state(Turtlebot3State.FIND_WALL)
        elif self.regions['front'] < self.d and self.regions['fleft'] > self.d and self.regions['fright'] > self.d:
            state_description = 'case 2 - front'
            self.set_state(Turtlebot3State.TURN_LEFT)
        elif self.regions['front'] > self.d and self.regions['fleft'] > self.d and self.regions['fright'] < self.d:
            state_description = 'case 3 - fright'
            self.set_state(Turtlebot3State.FOLLOW_WALL)
        elif self.regions['front'] > self.d and self.regions['fleft'] < self.d and self.regions['fright'] > self.d:
            state_description = 'case 4 - fleft'
            self.set_state(Turtlebot3State.FIND_WALL)
        elif self.regions['front'] < self.d and self.regions['fleft'] > self.d and self.regions['fright'] < self.d:
            state_description = 'case 5 - front and fright'
            self.set_state(Turtlebot3State.TURN_LEFT)
        elif self.regions['front'] < self.d and self.regions['fleft'] < self.d and self.regions['fright'] > self.d:
            state_description = 'case 6 - front and fleft'
            self.set_state(Turtlebot3State.TURN_LEFT)
        elif self.regions['front'] < self.d and self.regions['fleft'] < self.d and self.regions['fright'] < self.d:
            state_description = 'case 7 - front and fleft and fright'
            self.set_state(Turtlebot3State.TURN_LEFT)
            print(self.regions['front'])
            print(self.regions['fleft'])
        elif self.regions['front'] > self.d and self.regions['fleft'] < self.d and self.regions['fright'] < self.d:
            state_description = 'case 8 - fleft and fright'
            self.set_state(Turtlebot3State.FIND_WALL)
        else:
            state_description = 'unknown case'
            print(self.regions)

        print('Front '+str(self.regions['front']))
        print('Fleft '+str(self.regions['fleft']))
        print('Left '+str(self.regions['left']))
        print('Fright '+str(self.regions['fright']))
        print('Right '+str(self.regions['right']))
        print(state_description)

    def state_dispatcher(self):
        msg = Twist()
        if self.turtlebot3_state == Turtlebot3State.FIND_WALL:
            msg.linear.x = 0.2
            msg.angular.z = -0.3
            return msg
        elif self.turtlebot3_state == Turtlebot3State.TURN_LEFT:
            msg.angular.z = 0.3
            return msg
        elif self.turtlebot3_state == Turtlebot3State.FOLLOW_WALL:
            msg.linear.x = 0.5
            return msg
        else:
            print('unknown state!')

if __name__ == '__main__':
    rospy.init_node('wall_follower')
    publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    rate = rospy.Rate(20)

    wallfollower = WallFollower()
    print('wallfollower started')

    while not rospy.is_shutdown():
        msg = wallfollower.state_dispatcher()
        publisher.publish(msg)
        rate.sleep()
