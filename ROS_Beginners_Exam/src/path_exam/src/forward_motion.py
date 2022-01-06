#! /usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

class move_drone():
    def __init__(self):
        self.move_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self.land_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
        self.takeoff_msg = Empty()
        self.move_msg = Twist()
        self.land_msg = Empty()
        rospy.sleep(0.5)

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


if __name__ == '__main__':
    rospy.init_node("drone_motion")

    instance = move_drone()
    instance.move()