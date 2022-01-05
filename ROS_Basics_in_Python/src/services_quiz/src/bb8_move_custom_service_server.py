#! /usr/bin/env python

import rospy
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse 
from geometry_msgs.msg import Twist
import numpy as np

def move_side(side=0.2):
    time_to_move = side / 0.2
    cmd.linear.x = 0.2
    cmd.angular.z = 0
    i = 0
    while i < time_to_move:
        my_pub.publish(cmd)
        i += 1
        rate.sleep()
    cmd.linear.x = 0
    my_pub.publish(cmd)

def turn():
    cmd.linear.x = 0
    cmd.angular.z = np.pi / 2
    my_pub.publish(cmd)
    rate.sleep()
    cmd.angular.z = 0
    my_pub.publish(cmd)

def my_callback(request):
    rospy.loginfo("Service /move_bb8_in_square_custom has been called")

    for i in range(request.repetitions):
        move_side(request.side)
        turn()
        move_side(request.side)
        turn()
        move_side(request.side)
        turn()
        move_side(request.side)
        turn()
    
    my_response = BB8CustomServiceMessageResponse()
    my_response.success = True

    rospy.loginfo("Service /move_bb8_in_square_custom Finished")
    
    return my_response

rospy.init_node('service_server') 
rate = rospy.Rate(1)
my_service = rospy.Service('/move_bb8_in_square_custom', BB8CustomServiceMessage , my_callback) # create the Service called my_service with the defined callback
my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
cmd = Twist()
rospy.loginfo("Service /move_bb8_in_square_custom Ready")
rospy.spin() # maintain the service open.