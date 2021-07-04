#!/usr/bin/env python3

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Pose
import time
from turtlesim_halbeisen.msg import TurtlesimState
from turtlesim_halbeisen.srv import LogTimeout

class SaveTurtlesimState(object):
    def __init__(self):
        self.message = TurtlesimState() 
        self.turtlesimState_sub = rospy.Subscriber('turtlesimState', TurtlesimState , self.turtlesimState_callback)
        self.count = 0 
        self.log_timeout = 1
        self.log_timeout_srv = rospy.Service('log_timeout_srv', LogTimeout, self.setLogTimeout)

    def setLogTimeout(self,srv_msg):
        self.log_timeout = srv_msg.timeout
        return True
    
    def turtlesimState_callback(self, msg):
        global amount
        print(msg)
        self.message=msg
        self.write_to_file()
        self.count = self.count + 1
        if self.count == amount:
            self.turtlesimState_sub.unregister()
            rospy.loginfo("Written all Messages to messages.txt file")
        time.sleep(self.log_timeout)

    def write_to_file(self):
        with open('messages.txt', 'w') as file:
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
    amount, success = intTryParse(input("Type in the amount of messages you want to save in a file:"))
    if success == False:
        print("not an integer: amount=5")
        amount = 5
    save_turtlesimState = SaveTurtlesimState()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down...")
