#! /usr/bin/env python

import rospy
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageRequest
import sys
import rospkg

rospy.init_node("service_client")
rospy.wait_for_service("/move_bb8_in_square_custom")
move_bb8_in_square_client = rospy.ServiceProxy('/move_bb8_in_square_custom', BB8CustomServiceMessage)
move_bb8_in_square_request_object = BB8CustomServiceMessageRequest()

move_bb8_in_square_request_object.repetitions = 2
move_bb8_in_square_request_object.side = 1.0
result = move_bb8_in_square_client(move_bb8_in_square_request_object)
print(result)

move_bb8_in_square_request_object.repetitions = 1
move_bb8_in_square_request_object.side = 2.0
result = move_bb8_in_square_client(move_bb8_in_square_request_object)
print(result)

