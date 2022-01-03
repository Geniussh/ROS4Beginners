#! /usr/bin/env python

import rospy
# Import the service message used by the service /trajectory_by_name
from std_srvs.srv import Empty, EmptyRequest
import sys
import rospkg

rospy.init_node("service_client")
rospy.wait_for_service("/move_bb8_in_circle")
move_bb8_in_circle_client = rospy.ServiceProxy('/move_bb8_in_circle', Empty)
move_bb8_in_circle_request_object = EmptyRequest()

result = move_bb8_in_circle_client(move_bb8_in_circle_request_object)
print(result)