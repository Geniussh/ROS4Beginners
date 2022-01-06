#! /usr/bin/env python
import rospy
from std_msgs.msg import Empty

class drone_move():
    def __init__(self):
        self.pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self.takeoff_msg = Empty()
        rospy.sleep(1)

    def move_it(self):
        while self.pub.get_num_connections() < 1:  # wait for publisher connection
            continue
        self.pub.publish(self.takeoff_msg)
        rospy.loginfo('Taking off...')

        rospy.sleep(5)

if __name__=='__main__':
    rospy.init_node('drone_move')
    instance = drone_move()
    instance.move_it()