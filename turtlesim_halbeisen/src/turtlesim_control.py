#!/usr/bin/env python

import rospy, sys, tty, select, termios
from std_msgs.msg import String
from geometry_msgs.msg import Twist, Pose
from turtlesim_halbeisen.srv import StopControl

class ControlTurtlesim(object):
    def __init__(self):
        self.settings = termios.tcgetattr(sys.stdin)
        #set key mappings to control turtle over keyboard
        self.key_mapping = { 'w': [0, 1],  'x':[0, -1],
                                'a': [-1, 0], 'd': [1, 0],
                                's': [0, 0] }
        #initialiye variables
        self.speed = None 
        self.pos = Twist()
        #set variable for enabling or stopping control of turtlesim via keyboard
        self.is_publishing = True
        #service which determines, if control should be stopped
        self.stop_control_srv = rospy.Service('stop_control_srv', StopControl, self.setIsPublishing)

    def setIsPublishing(self,srv_msg):
        self.is_publishing = srv_msg.is_publishing
        return True

    #get key pressed on keyboard
    def getKey(self):
        tty.setraw(sys.stdin.fileno())
        rlist, _, _ = select.select([sys.stdin], [], [])
        if rlist:
            key = sys.stdin.read(1)
        else:
            key = ''
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.settings)
        return key

    #move turtle according to key input and speed
    def moveTurtle(self, speed):
        key = self.getKey()
        print(key)
        if key in self.key_mapping:
            #set velocity of turtlesim according to keymapping and speed
            vels = self.key_mapping[key]
            self.pos.angular.z = vels[0]*speed
            self.pos.linear.x  = vels[1]*speed
            print(self.pos)

    
    def getPos(self):
        return self.pos

    def getIsPublishing(self):
        return self.is_publishing

#try to parse user input to int
def intTryParse(value):
    try:
        return int(value), True
    except ValueError:
        return value, False

if __name__ == '__main__':
    #init publish node
    node_name = rospy.get_param(param_name="control_node_name", default="control_node")
    rospy.init_node(node_name, anonymous=False)
    #create publisher for cmd_vel topic
    twist_pub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=1)
    

    turtlesimControl = ControlTurtlesim()

    #read user input
    speed, success = intTryParse(input("Set speed of turtle:"))

    #set default value of speed
    if success == False:
        print("not an integer: speed=1")
        speed = 1

    #get paramter for update frequency
    control_rate = rospy.get_param(param_name="control_node_rate", default=5)
    rate = rospy.Rate(control_rate)
    
    try:
        while not rospy.is_shutdown():
            turtlesimControl.moveTurtle(speed)
            twist_pub.publish(turtlesimControl.getPos())
            rate.sleep()
            if turtlesimControl.getIsPublishing() == False:
                print("turtlesim control stopped by service")
                break

    except KeyboardInterrupt:
        print("Shutting down...")