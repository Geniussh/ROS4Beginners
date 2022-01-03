#! /usr/bin/env python

import rospy
from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageRequest
import sys
import rospkg

rospy.init_node("service_client")
rospy.wait_for_service("/move_bb8_in_circle_custom")
move_bb8_in_circle_client = rospy.ServiceProxy('/move_bb8_in_circle_custom', MyCustomServiceMessage)
move_bb8_in_circle_request_object = MyCustomServiceMessageRequest()
move_bb8_in_circle_request_object.duration = 5
result = move_bb8_in_circle_client(move_bb8_in_circle_request_object)
print(result)