#! /usr/bin/env python

import rospy                               # Import the Python library for ROS
# from std_msgs.msg import Int32             # Import the Int32 message from the std_msgs package
from geometry_msgs.msg import Twist

rospy.init_node('topic_publisher')         # Initiate a Node named 'topic_publisher'
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)    
                                           # Create a Publisher object, that will publish on the /counter topic
                                           # messages of type Int32

rate = rospy.Rate(2)                       # Set a publish rate of 2 Hz
var = Twist()                            # Create a var of type Int32
var.linear.x = 0.5
var.angular.z = 0.5
# count.data = 0                             # Initialize 'count' variable

while not rospy.is_shutdown():             # Create a loop that will go until someone stops the program execution
  pub.publish(var)                       # Publish the message within the 'count' variable
#   count.data += 1                          # Increment 'count' variable
  rate.sleep()                             # Make sure the publish rate maintains at 2 Hz