#!/usr/bin/env python
import rospy
import sys
from turtlesim_halbeisen.srv import LogTimeout

#set timeout variable of service
def setTimeout_client(timeout):
    rospy.wait_for_service('log_timeout_srv')
    try:
        srv_logtimeout = rospy.ServiceProxy('log_timeout_srv', LogTimeout)
        resp = srv_logtimeout(timeout)
        if resp.success == True:
            print('Set timeout parameter successfully')
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

#try to parse user input to int
def intTryParse(value):
    try:
        return int(value), True
    except ValueError:
        return value, False

if __name__ == "__main__":
    #read user input to set timeout paramter
    timeout, success = intTryParse(input("Set timeout of message saving:"))
    #set default timeout parameter
    if success == False:
        ("not an integer:timeout=1")
        timeout = 1
    print("Requesting timeout %s"%timeout)
    setTimeout_client(timeout)