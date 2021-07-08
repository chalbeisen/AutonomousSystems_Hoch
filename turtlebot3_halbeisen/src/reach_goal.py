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
    TURN_TO_OBSTACLE = 0
    GO_TO_OBSTACLE = 1
    STOP = 2

class ReachGoal(object):
    #initialize turtlebot3 goal reacher
    def __init__(self):
        self.turtlebot3_state = Turtlebot3State.TURN_TO_OBSTACLE
        self.msg = Twist()
        self.publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.subscriber = rospy.Subscriber('/scan', LaserScan, self.laser_callback)
        self.d = 0.2
        print('Initialized')

    #callback method of lidar laser
    def laser_callback(self, msg):
        print('callback')
        self.sensorValues = msg.ranges
        self.minFrontValue = min(np.hstack((msg.ranges[:18],msg.ranges[342:360])))
        self.state_dispatcher()

    #set state of turtlebot3
    def set_state(self, state):
        if state is not self.turtlebot3_state:
            self.turtlebot3_state = state


    #rotate to obstacle nearest to turtlebot3
    def rotate_to_angle(self,relative_angle):
        angular_speed = 0.3
        msg = Twist()
        #rotate clockwise
        if relative_angle > 180:
            msg.angular.z = -abs(angular_speed)
        #rotate counterclockwise
        else:
            msg.angular.z = abs(angular_speed)

        t0 = rospy.Time.now().to_sec()
        current_angle = 0

        #rotate tutlebot3 until it reached goal
        print('Rotate to obstacle at: '+str(self.minAngleIndex))
        while(current_angle < relative_angle):
            print('Current angle : '+str(current_angle))
            print('Relative angle : '+str(relative_angle))
            self.publisher.publish(msg)
            t1 = rospy.Time.now().to_sec()
            current_angle = angular_speed*(t1-t0)
        msg.angular.z = 0
        self.publisher.publish(msg)
        self.set_state(Turtlebot3State.GO_TO_OBSTACLE)
    
    
    #state dispatcher of turtlebot3
    def state_dispatcher(self):
        state_description = ''
        msg = Twist()
        #turn to obstacle
        if self.turtlebot3_state == Turtlebot3State.TURN_TO_OBSTACLE:
            print('Turn to obstacle')
            self.minDist =  min(self.sensorValues)
            self.minAngleIndex = self.sensorValues.index(self.minDist)
            self.rotate_to_angle(math.radians(self.minAngleIndex))
        #drive to obstacle
        elif self.turtlebot3_state == Turtlebot3State.GO_TO_OBSTACLE:
            msg.linear.x = 0.2
            msg.angular.z = 0
            print('Drive to obstacle')
            self.publisher.publish(msg)
            if self.minFrontValue < self.d:
                self.set_state(Turtlebot3State.STOP)
        #stop
        elif self.turtlebot3_state == Turtlebot3State.STOP:
            msg.linear.x = 0
            msg.angular.z = 0
            self.publisher.publish(msg)
            print('roboter in front of obstacle: STOP')
        #unknown state
        else:
            msg.linear.x = 0
            msg.angular.z = 0
            self.publisher.publish(msg)
            print('unknown state!')
        print(state_description)
        return msg

if __name__ == '__main__':
    rospy.init_node('reach_goal')
    reachgoal = ReachGoal()
    print('reach nearest obstacle started')
    rospy.spin()
