#!/usr/bin/env python

import rospy
from math import pi, sin, cos, acos
import random
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
"""
Topics To Write on:
type: std_msgs/Float64
/jibo/base_waist_joint_position_controller/command
/jibo/body_head_joint_position_controller/command
/jibo/waist_body_joint_position_controller/command
"""

class JiboJointMover(object):

    def __init__(self):
        rospy.init_node('jointmover_demo', anonymous=True)
        rospy.loginfo("Jibo JointMover Initialising...")
        self.pub_jibo_base_waist_joint_position = rospy.Publisher('/jibo/base_waist_joint_position_controller/command',
                                                            Float64,
                                                            queue_size=1)
        self.pub_jibo_waist_body_joint_position = rospy.Publisher('/jibo/waist_body_joint_position_controller/command',
                                                             Float64,
                                                             queue_size=1)
        self.pub_jibo_body_head_joint_position = rospy.Publisher('/jibo/body_head_joint_position_controller/command',
                                                           Float64,
                                                           queue_size=1)
        self.joint_states_topic_name = "/jibo/joint_states"
        jibo_joints_data = self._check_joint_states_ready()
        if jibo_joints_data is not None:
            self.jibo_joint_dictionary = dict(zip(jibo_joints_data.name, jibo_joints_data.position))
            rospy.Subscriber(self.joint_states_topic_name, JointState, self.jibo_joints_callback)


    def _check_joint_states_ready(self):
        self.joint_states = None
        rospy.logdebug("Waiting for "+str(self.joint_states_topic_name)+" to be READY...")
        while self.joint_states is None and not rospy.is_shutdown():
            try:
                self.joint_states = rospy.wait_for_message(self.joint_states_topic_name, JointState, timeout=5.0)
                rospy.logdebug("Current "+str(self.joint_states_topic_name)+" READY=>")

            except:
                rospy.logerr("Current "+str(self.joint_states_topic_name)+" not ready yet, retrying")

        return self.joint_states

    def move_jibo_all_joints(self, base_rotation, waist_rotation, head_rotation):
        angle_base = Float64()
        angle_base.data = base_rotation
        angle_waist = Float64()
        angle_waist.data = waist_rotation
        angle_head = Float64()
        angle_head.data = head_rotation
        self.pub_jibo_base_waist_joint_position.publish(base_rotation)
        self.pub_jibo_waist_body_joint_position.publish(waist_rotation)
        self.pub_jibo_body_head_joint_position.publish(head_rotation)

    def move_jibo_base_waist_joint(self, position):
        """
        limits radians : lower="-0.2" upper="0.2"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_jibo_base_waist_joint_position.publish(angle)

    def move_jibo_waist_body_joint(self, position):
        """
        limits radians : lower="0" upper="0.44"
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_jibo_waist_body_joint_position.publish(angle)

    def move_jibo_body_head_joint(self, position):
        """
        Limits : continuous, no limits
        :param position:
        :return:
        """
        angle = Float64()
        angle.data = position
        self.pub_jibo_body_head_joint_position.publish(angle)

    def jibo_joints_callback(self, msg):
        """
        sensor_msgs/JointState
        std_msgs/Header header
        uint32 seq
        time stamp
        string frame_id
        string[] name
        float64[] position
        float64[] velocity
        float64[] effort

        :param msg:
        :return:
        """
        self.jibo_joint_dictionary = dict(zip(msg.name, msg.position))

    def jibo_check_joint_value(self, joint_name, value, error=0.1):
        """
        Check the joint by name  is near the value given 'base_waist_joint', 'body_head_joint', 'waist_body_joint'
        :param value:
        :return:
        """
        similar = self.jibo_joint_dictionary.get(joint_name) >= (value - error ) and self.jibo_joint_dictionary.get(joint_name) <= (value + error )

        return similar

    def convert_angle_to_unitary(self, angle):
        """
        Removes complete revolutions from angle and converts to positive equivalent
        if the angle is negative
        :param angle: Has to be in radians
        :return:
        """
        # Convert to angle between [0,360)
        complete_rev = 2 * pi
        mod_angle = int(angle / complete_rev)
        clean_angle = angle - mod_angle * complete_rev
        # Convert Negative angles to their corresponding positive values
        if clean_angle < 0:
            clean_angle += 2 * pi

        return clean_angle

    def assertAlmostEqualAngles(self, x, y,):
        c2 = (sin(x) - sin(y)) ** 2 + (cos(x) - cos(y)) ** 2
        angle_diff = acos((2.0 - c2) / 2.0)
        return angle_diff

    def jibo_check_continuous_joint_value(self, joint_name, value, error=0.1):
        """
        Check the joint by name 'base_waist_joint', 'body_head_joint', 'waist_body_joint is near the value given
        We have to convert the joint values removing whole revolutions and converting negative versions
        of the same angle
        :param joint_name:
        :param value:
        :param error: In radians
        :return:
        """
        joint_reading = self.jibo_joint_dictionary.get(joint_name)
        clean_joint_reading = self.convert_angle_to_unitary(angle=joint_reading)
        clean_value = self.convert_angle_to_unitary(angle=value)

        dif_angles = self.assertAlmostEqualAngles(clean_joint_reading, clean_value)
        similar = dif_angles <= error

        return similar

    def jibo_movement_look(self, base_rotation, waist_rotation, head_rotation):
        """
        Make jibo look down, 'base_waist_joint', 'body_head_joint', 'waist_body_joint
        :return:
        """
        check_rate = 5.0
        position_base = base_rotation
        position_waist = waist_rotation
        position_head = head_rotation

        similar_base = False
        similar_waist = False
        similar_head = False
        rate = rospy.Rate(check_rate)
        while not (similar_base and similar_waist and similar_head):
            self.move_jibo_all_joints(position_base, position_waist, position_head)
            similar_base = self.jibo_check_continuous_joint_value(joint_name="base_waist_joint", value=position_base)
            similar_waist = self.jibo_check_continuous_joint_value(joint_name="waist_body_joint", value=position_waist)
            similar_head = self.jibo_check_continuous_joint_value(joint_name="body_head_joint", value=position_head)
            rate.sleep()

    def jibo_movebaseleftright(self):
        base_rotation = 0.0
        waist_rotation = 0.0
        head_rotation = 0.0
        self.jibo_movement_look(base_rotation, waist_rotation, head_rotation)

        base_rotation = 1.57
        waist_rotation = 0.0
        head_rotation = 0.0
        self.jibo_movement_look(base_rotation, waist_rotation, head_rotation)

    def jibo_moverandomly(self):
        base_rotation = random.uniform(0.0, 2*pi)
        waist_rotation = random.uniform(0.0, 2*pi)
        head_rotation = random.uniform(0.0, 2*pi)
        self.jibo_movement_look(base_rotation, waist_rotation, head_rotation)

    def movement_random_loop(self):
        """
        Executed movements in a random way
        :return:
        """
        rospy.loginfo("Start Moving Jibo...")
        while not rospy.is_shutdown():
            self.jibo_moverandomly()


if __name__ == "__main__":
    jibo_jointmover_object = JiboJointMover()
    jibo_jointmover_object.movement_random_loop()

