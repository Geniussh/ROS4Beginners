#! /usr/bin/env python

import rospy
from std_srvs.srv import Empty, EmptyResponse # you import the service message python classes generated from Empty.srv.
from geometry_msgs.msg import Twist

def my_callback(request):
    rospy.loginfo("Service /move_bb8_in_circle has been called")
    cmd.linear.x = 0.5
    cmd.angular.z = 0.5
    my_pub.publish(cmd)
    rospy.loginfo("Service /move_bb8_in_circle Finished")
    return EmptyResponse()

rospy.init_node('service_server') 
my_service = rospy.Service('/move_bb8_in_circle', Empty , my_callback) # create the Service called my_service with the defined callback
my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
cmd = Twist()
rospy.loginfo("Service /move_bb8_in_circle Ready")
rospy.spin() # maintain the service open.