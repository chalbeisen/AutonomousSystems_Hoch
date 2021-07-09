#! /usr/bin/env python
import socket
import json
import sys
import rospy

BUFSIZE = 1024

def _send(socket, send_data):
    socket.sendall(send_data.encode())


def _recv(socket):
    recv_data = socket.recv(BUFSIZE)
    str_data = recv_data.decode()
    return str_data 

class Server(object):
    backlog = 1
    client = None

    #initialize socket for connection
    def __init__(self):
        self.host = '127.0.0.1'
        self.port = 5050
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.bind((self.host, self.port))
        self.socket.listen(self.backlog)

    def __del__(self):
        self.close()

    #accept connection with client
    def accept(self):
        if self.client:
            self.client.close()

        self.client, self.client_addr = self.socket.accept()

    #send data to client
    def send(self, data):
        if not self.client:
            raise Exception('Cannot send data, no client is connected.')

        _send(self.client, data)

    #receive data from client
    def recv(self):
        if not self.client:
            raise Exception('Cannot receive data, no client is connected.')

        return _recv(self.client)

    #close connection
    def close(self):
        if self.client:
            self.client.close()
            self.client =None

        if self.socket:
            self.socket.close()
            self.socket =None

if __name__=='__main__':
    rospy.init_node('tcp_server', anonymous=True)
    server = Server()
    print('Server STARTED')

    while not rospy.is_shutdown():
    
        server.accept()
        str_data=server.recv()
        if not str_data: break
        print('Server received following data: '+str(str_data))
        server.send('Server received data!')