#!/usr/bin/env python
from __future__ import print_function

import roslib
import sys
import rospy
import cv2
import numpy as np
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class image_converter:
  #initialize image converter
  def __init__(self):
    self.image_pub = rospy.Publisher("image_topic_camera",Image)
    self.image_grey_pub = rospy.Publisher("grey_image_topic_camera",Image)
    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("/camera/rgb/image_raw",Image,self.callback)

  #callback of camera topic
  def callback(self,data):
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
      #greyscale image
      cv_image_grey = cv2.cvtColor(cv_image, cv2.COLOR_BGR2GRAY)
    except CvBridgeError as e:
      print(e)

    cv2.imshow("Image window", cv_image)
    #greyscale image
    cv2.imshow("Grey Image window ", cv_image_grey)
    #additional: show object segmentation with watershed
    object_segmentation(cv_image)
    cv2.waitKey(3)

    try:
      self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
      self.image_grey_pub.publish(self.bridge.cv2_to_imgmsg(cv_image_grey, "bgr8"))
    except CvBridgeError as e:
      print(e)

def object_segmentation(img):
  gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
  ret, thresh = cv2.threshold(gray,0,255,cv2.THRESH_BINARY_INV+cv2.THRESH_OTSU)
  #noise removal
  kernel = np.ones((3,3),np.uint8)
  opening = cv2.morphologyEx(thresh,cv2.MORPH_OPEN,kernel, iterations = 2)
  #sure background area
  sure_bg = cv2.dilate(opening,kernel,iterations=3)
  #Finding sure foreground area
  dist_transform = cv2.distanceTransform(opening,cv2.DIST_L2,5)
  ret, sure_fg = cv2.threshold(dist_transform,0.7*dist_transform.max(),255,0)
  #Finding unknown region
  sure_fg = np.uint8(sure_fg)
  unknown = cv2.subtract(sure_bg,sure_fg)
  #Marker labelling
  ret, markers = cv2.connectedComponents(sure_fg)
  #Add one to all labels so that sure background is not 0, but 1
  markers = markers+1
  #Now, mark the region of unknown with zero
  markers[unknown==255] = 0
  markers = cv2.watershed(img,markers)
  img[markers == -1] = [255,0,0]
  cv2.imshow("Image window with object segmentation", img)

def main(args):
  ic = image_converter()
  rospy.init_node('image_converter', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)