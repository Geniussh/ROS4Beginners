#! /usr/bin/env python

import time
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

rospy.init_node('quiz')

rate = rospy.Rate(10)
cmd = Twist()
laser = LaserScan()

def callback(msg): 
    laser = msg.ranges
    
    if laser[360] > 1 and laser[0] > 1 and laser[-1] > 1:
        cmd.linear.x = 0.5
        cmd.angular.z = 0
    elif laser[360] <= 1:
        cmd.linear.x = 0
        cmd.angular.z = 0.5
    elif laser[0] <= 1:
        cmd.linear.x = 0
        cmd.angular.z = 0.5
    if laser[-1] <= 1:
        cmd.linear.x = 0
        cmd.angular.z = -0.5


sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

while not rospy.is_shutdown():
    pub.publish(cmd)
    rate.sleep()