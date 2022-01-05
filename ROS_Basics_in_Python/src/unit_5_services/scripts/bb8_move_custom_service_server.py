#! /usr/bin/env python

import rospy
from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse 
from geometry_msgs.msg import Twist

def my_callback(request):
    rospy.loginfo("Service /move_bb8_in_circle_custom has been called")
    
    time = 0
    while time < request.duration:
        time += 1
        cmd.linear.x = 0.5
        cmd.angular.z = 0.5
        my_pub.publish(cmd)
        rate.sleep()
    
    cmd.linear.x = 0
    cmd.angular.z = 0
    my_pub.publish(cmd)
    my_response = MyCustomServiceMessageResponse()
    my_response.success = True

    rospy.loginfo("Service /move_bb8_in_circle_custom Finished")
    
    return my_response

rospy.init_node('service_server') 
rate = rospy.Rate(1)
my_service = rospy.Service('/move_bb8_in_circle_custom', MyCustomServiceMessage , my_callback) # create the Service called my_service with the defined callback
my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
cmd = Twist()
rospy.loginfo("Service /move_bb8_in_circle_custom Ready")
rospy.spin() # maintain the service open.