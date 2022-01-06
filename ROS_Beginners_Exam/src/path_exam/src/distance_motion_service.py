#! /usr/bin/env python

import rospy
from std_msgs.msg import Empty
from std_srvs.srv import Trigger, TriggerResponse
from geometry_msgs.msg import Twist, Pose

class drone_service():
    def __init__(self):
        self.srv = rospy.Service('/my_service', Trigger, self.srv_callback)
        self.move_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self.land_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
        self.move_msg = Twist()
        self.takeoff_msg = Empty()
        self.land_msg = Empty()

        self.sub = rospy.Subscriber('/drone/gt_pose', Pose, self.callback)
        self.odom = Pose()

        rospy.sleep(0.5)

    def callback(self, data):
        self.odom = data
    
    def move(self):
        while self.takeoff_pub.get_num_connections() < 1:  # wait for publisher connection
            continue
        self.takeoff_pub.publish(self.takeoff_msg)
        rospy.sleep(2)
        
        while self.move_pub.get_num_connections() < 1:  # wait for publisher connection
            continue
        self.move_msg.linear.x = 1
        self.move_pub.publish(self.move_msg)
        rospy.sleep(5)
        
        self.move_msg.linear.x = 0
        self.move_msg.angular.z = 0
        self.move_pub.publish(self.move_msg)
        rospy.sleep(1.5)
        
        while self.land_pub.get_num_connections() < 1:  # wait for publisher connection
            continue
        self.land_pub.publish(self.land_msg)

    def srv_callback(self, request):
        response = TriggerResponse()
        pos_init = self.odom.position.x
        self.move()
        pos_last = self.odom.position.x
        
        response.success = True
        response.message = "The drone has moved {} meters.".format(pos_last - pos_init)
        return response

if __name__=='__main__':
    rospy.init_node('drone_service')
    drone_service()
    rospy.spin()