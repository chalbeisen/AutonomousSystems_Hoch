#CODE INSPIRATION FROM: https://www.theconstructsim.com/wall-follower-algorithm/
#https://github.com/thek1d/turtlebot/blob/main/src/wall_follower.py
#http://www2.ece.ohio-state.edu/~zhang/RoboticsClass/docs/ECE5463_ROSTutorialLecture3.pdf

#! /usr/bin/env python

# import ros stuff
import rospy
import math
import numpy as np
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf import transformations
from enum import Enum
from operator import itemgetter

#state enum for turtlebot3
class Turtlebot3State(Enum):
    FIND_WALL= 0
    FOLLOW_WALL = 1

#initialize turtlebot3 state
class WallFollower(object):
    def __init__(self):
        self.turtlebot3_state = Turtlebot3State.FIND_WALL
        self.msg = Twist()
        self.subscriber = rospy.Subscriber('/scan', LaserScan, self.laser_callback)
        self.d = 0.5
        self.d_wall = 0.2
        print('Initialized')

    #callback method of lidar laser
    def laser_callback(self, msg):
        self.sensorValues = msg.ranges
        self.minFrontValue = min(np.hstack((msg.ranges[:18],msg.ranges[342:360])))
        self.minDist =  min(self.sensorValues)
        self.minAngleIndex = self.sensorValues.index(self.minDist)
        print('Min index '+str(self.minAngleIndex))
        print('Front '+str(msg.ranges[0]))
        print('Left '+str(msg.ranges[90]))
        print('Right '+str(msg.ranges[270]))
        self.change_state()

    #set state of turtlebot3
    def set_state(self, state):
        if state is not self.turtlebot3_state:
            self.turtlebot3_state = state

    #change state of turtlebot3
    def change_state(self):
        #if wall in front of turtlebot3: set state to FOLLOW_WALL
        if self.minFrontValue < self.d_wall and self.turtlebot3_state == Turtlebot3State.FIND_WALL:
            self.set_state(Turtlebot3State.FOLLOW_WALL)

    #state dispatcher of turtlebot3
    def state_dispatcher(self):
        state_description = ''
        msg = Twist()
        #searching for wall: go straight ahead
        if self.turtlebot3_state == Turtlebot3State.FIND_WALL:
            msg.linear.x = 0.5
            msg.angular.z = 0
            state_description = 'STATE1: find wall, CASE1: drive straight ahead'

        #follow wall
        elif self.turtlebot3_state == Turtlebot3State.FOLLOW_WALL:
            #if wall in front ob robot: turn around
            if self.minFrontValue < self.d:
                msg.angular.z = math.pi/2
                print('ANGULAR '+str(msg.angular.z))
                msg.linear.x = 0
                state_description = 'STATE2: follow wall, CASE1: obstacle in front, turn around'
            #if angle of min distance on left side or right side of turtlebot3: go straight ahead
            elif (self.minAngleIndex < 110 and self.minAngleIndex > 70) or (self.minAngleIndex < 290 and self.minAngleIndex > 250): 
                msg.angular.z = 0
                msg.linear.x = 0.2
                state_description = 'STATE2: follow wall, CASE2: no obstacle, go straight ahead'
            else:
                #if angle of min distance on right side of robot: turn left (proportional to angle of min distance)
                if self.minAngleIndex > 180:
                    #turn left 
                    msg.angular.z = math.radians(self.minAngleIndex - 450)/2
                    print('ANGULAR '+str(msg.angular.z))
                    msg.linear.x = 0.2
                    state_description = 'STATE2: follow wall, CASE2: turn left according to angle of smallest distance'
                #if angle of min distance on left side of robot: turn right (proportional to angle of min distance)
                else: 
                    msg.angular.z = math.radians(self.minAngleIndex - 90)/2
                    print('ANGULAR '+str(msg.angular.z))
                    msg.linear.x = 0.2
                    state_description = 'STATE2: follow wall, CASE2: turn right according to angle of smallest distance'
        #unknown state
        else:
            msg.linear.x = 0
            msg.angular.z = 0
            state_description = 'unknown state!'
        print(state_description)
        return msg

if __name__ == '__main__':
    rospy.init_node('wall_follower2')
    publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    wallfollower = WallFollower()
    print('Wallfollower started')

    while not rospy.is_shutdown():
        msg = wallfollower.state_dispatcher()
        publisher.publish(msg)
