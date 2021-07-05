#!/usr/bin/env python
import rospy
import sys
from turtlesim_halbeisen.srv import StopControl

#set stop parameter of stop control service
def stopPublishing_client():
    rospy.wait_for_service('stop_control_srv')
    try:
        is_publishing = False
        srv_stopcontrol = rospy.ServiceProxy('stop_control_srv', StopControl)
        resp = srv_stopcontrol(is_publishing)
        if resp.success == True:
            print('Successfully set isPublishing parameter')
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

#try to parse user input to int
def intTryParse(value):
    try:
        return int(value), True
    except ValueError:
        return value, False

if __name__ == "__main__":
    while not rospy.is_shutdown():
        #get user input, if input = 1 => stop turtlesim control
        is_publishing, success = intTryParse(input("Stop turtlesim control by pressing 1:"))
        if success == False:
            print("not an integer!")
        elif is_publishing != 1:
            print("if you want to stop turtlesim control, press 1")
        else:
            print("Stopping tutlesim control")
            stopPublishing_client()
            break
