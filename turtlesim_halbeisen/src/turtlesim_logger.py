#! /usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Pose
import time
import os
from turtlesim_halbeisen.msg import TurtlesimState
from turtlesim_halbeisen.srv import LogTimeout

class SaveTurtlesimState(object):
    #init subscriber to turtlesimState node, TurtlesimState-message and timeout time
    def __init__(self):
        self.message = TurtlesimState() 
        self.turtlesimState_sub = rospy.Subscriber('turtlesimState', TurtlesimState , self.turtlesimState_callback)
        self.count = 0 
        self.log_timeout = 1
        self.log_timeout_srv = rospy.Service('log_timeout_srv', LogTimeout, self.setLogTimeout)
        filename = rospy.get_param(param_name="filename", default="messages")
        path = rospy.get_param(param_name="path", default="./textfiles")
        if not os.path.exists(path):
            os.makedirs(path)
        self.complete_name = os.path.join(path, filename+".txt") 

    #set log timeout time
    def setLogTimeout(self,srv_msg):
        self.log_timeout = srv_msg.timeout
        return True
    
    #everytime a new TurtlesimState-message is published, write it into text file
    #count variable counts the amount of messages already written into text file
    #if maximum amount is reached (maximum amount is set by user), stop writing to file and unsubscribe
    def turtlesimState_callback(self, msg):
        global amount
        print(msg)
        self.message=msg
        self.write_to_file()
        self.count = self.count + 1
        if self.count == amount:
            self.turtlesimState_sub.unregister()
            rospy.loginfo("Written all Messages to "+self.complete_name+" file")
        time.sleep(self.log_timeout)

    #write message to file
    def write_to_file(self):
        with open(self.complete_name, 'a', newline='\n') as file:
            file.write('\n----------\n'+'message '+str(self.count)+':\n----------\n'+ str(self.message) + '\n===========\n\n')

        
#try to parse user input to int
def intTryParse(value):
    try:
        return int(value), True
    except ValueError:
        return value, False

if __name__ == "__main__":
    node_name = rospy.get_param(param_name="logger_node_name", default="logger_node")
    rospy.init_node(node_name, anonymous=False)
    #set amount of messages, that should be written into txt file
    amount, success = intTryParse(input("Type in the amount of messages you want to save in a file:"))
    #set default amount
    if success == False:
        print("not an integer: amount=5")
        amount = 5
    save_turtlesimState = SaveTurtlesimState()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down...")
