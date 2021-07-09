#! /usr/bin/env python
import socket
import json
import sys, getopt
import rospy
from nav_msgs.msg import Odometry

BUFSIZE = 1024

#send and receive data
def _send(socket, send_data):
    socket.sendall(send_data.encode())


def _recv(socket):
    recv_data = socket.recv(BUFSIZE)
    str_data = recv_data.decode()
    return str_data 

#tcp client
class Client(object):
    socket = None

    #set port and ip
    def __init__(self):
        self.host = '127.0.0.1'
        self.port = 5050

    def __del__(self):
        self.close()

    #connect to socket
    def connect(self):
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.connect((self.host, self.port))

    #send data 
    def send(self, data):
        if not self.socket:
            raise Exception('You have to connect first before sending data.')           

        _send(self.socket, data)

    #receive data
    def recv(self):
        if not self.socket:
            raise Exception('You have to connect first before receiving data.')

        return _recv(self.socket)

    #close socket
    def close(self):
        if self.socket:
            self.socket.close()
            self.socket =None

#callback method of odometrie: send pose data to server
def callback_odometrie(msg):
    global client
    client.connect()
    print('callback')
    client.send('Client send new Odometry data:')
    client.send(str(msg.pose))
    rcv_msg = client.recv()
    print('Client received following data: '+str(rcv_msg))


if __name__=='__main__':
    global client
    rospy.init_node('tcp_client', anonymous=True)
    client = Client()
    #subscribe to odometry topic (according to namespace)
    subscriber = rospy.Subscriber(rospy.get_namespace()+'odom', Odometry, callback_odometrie)
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")