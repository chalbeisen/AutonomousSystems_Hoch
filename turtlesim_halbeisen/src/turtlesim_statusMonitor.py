#!/usr/bin/env python
import rospy 
from geometry_msgs.msg import Twist
from turtlesim.msg import Color
from turtlesim.msg import Pose
from turtlesim_halbeisen.msg import TurtlesimState

class turtlesim_status:
    def __init__(self):
        #subscribe to all topics relevant for the turtlesim 
        self.message = TurtlesimState()
        rospy.Subscriber("turtle1/cmd_vel", Twist, self.twist_callback)
        rospy.Subscriber("turtle1/color_sensor", Color, self.color_callback)
        rospy.Subscriber("turtle1/pose", Pose, self.pose_callback)
    
    #callback methods to get update according to pose, color and twist messages
    def pose_callback(self, pose):
        self.message.pose = pose

    def color_callback(self, color):
        self.message.color = color 

    def twist_callback(self, twist):
        self.message.twist = twist
    
    
def publish(act_status):
    #create new publisher, which aggregates information of turtlesim into one
    #message
    pub = rospy.Publisher('turtlesimState', TurtlesimState, queue_size = 1)
    statusMonitor_rate = rospy.get_param(param_name="statusMonitor_node_rate", default=5)
    rate = rospy.Rate(statusMonitor_rate) 
    #publish aggregated message and print it on console
    while not rospy.is_shutdown():
        print(act_status.message)
        pub.publish(act_status.message)
        rate.sleep()

if __name__ == '__main__':
    node_name = rospy.get_param(param_name="statusMonitor_node_name", default="statusMonitor_node")
    rospy.init_node(node_name , anonymous=False)
    act_status = turtlesim_status()
    try:
       publish(act_status)
    except rospy.ROSInterruptException: pass