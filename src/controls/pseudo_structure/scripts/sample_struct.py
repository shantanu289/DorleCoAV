#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

class Sample_publisher(object):
    def __init__(self):
        self.message_tobe_sent = "Hello There! "
        self.pub_topic_name = "/demo_message"
        self.loadParameters()

    def publishToTopics(self):
        rospy.loginfo("Published to topics")
        self.messagePublisher = rospy.Publisher(
            "/demo_message", String, queue_size=1)
        rospy.loginfo("Done Publish")

    def loadParameters(self):
        rospy.loginfo("loading handle parameters")

        self.pub_topic_name = rospy.get_param(
            "pseudo_structure/publisher_topic_name", "/demo_message/config404")

        self.message_tobe_sent = rospy.get_param(
            "pseudo_structure/messageData", "Config404! ")

