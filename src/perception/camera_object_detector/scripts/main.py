#!/usr/bin/env python3
from __future__ import absolute_import
import rospy
from camera_object_detector import Detector
# from matplotlib.animation import FuncAnimation
# import matplotlib.pyplot as plt

def main():
    rospy.init_node('camera_object_detector')
    detector = Detector()
    detector.subscribeToTopics()
    detector.publishToTopics()
    rospy.spin()


if __name__ == u'__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
