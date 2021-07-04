#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist, Pose


keys = { 'w': [0, 1],  'x':[0, -1],
                'a': [-1, 0], 'd': [1, 0],
                's': [0, 0] }
vel = 2

pos = None

def keys_callback(msg, twist_pub):
    global pos
    if len(msg.data) == 0 or msg.data[0] not in keys:
        return #user send unknown key
    
    #set velocity of turtlesim according to keymapping and vel
    vels = keys[msg.data[0]]*vel
    pos.angular.z = vels[0]
    pos.linear.x  = vels[1]


if __name__ == '__main__':
    #init publish node
    rospy.init_node('publish_node')

    #create publisher for cmd_vel topic
    twist_pub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=1)
    
    #subscribe to keys topic. Everytime a message is published, 
    #the keys_callback updates global variable pos
    rospy.Subscriber('keys', String, keys_callback, twist_pub)
    pos = Twist()

    rate = rospy.Rate(2)
    
    while not rospy.is_shutdown():
        twist_pub.publish(pos)
        rate.sleep()