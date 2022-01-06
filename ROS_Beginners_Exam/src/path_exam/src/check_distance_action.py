#! /usr/bin/env python

import rospy
import actionlib
from path_exam.msg import RecordOdomAction, RecordOdomResult
from geometry_msgs.msg import Pose

class MoveDroneClass():

    # create messages that are used to publish feedback/result
    _result = RecordOdomResult()

    def __init__(self):
        self._as = actionlib.SimpleActionServer('/rec_pose_as', RecordOdomAction, self.goal_callback, False)
        self._as.start()
        
        self.sub = rospy.Subscriber('/drone/gt_pose', Pose, self.callback)
        self.odom = Pose()

    def callback(self, data):
        self.odom = data

    def goal_callback(self, goal):
        rate = rospy.Rate(1)
        success = True
        result_list = []

        for _ in range(20):

            # check that preempt (cancelation) has not been requested by the action client
            if self._as.is_preempt_requested():
                rospy.loginfo('The goal has been cancelled/preempted')
                self._as.set_preempted()
                success = False
                break
            
            result_list.append(self.odom)
            rate.sleep()
        
        if success:
            self._result.result = result_list
            self._as.set_succeeded(self._result)

            # Debug use
            # print("First pose:"); print(result_list[0])
            # print("Second pose:"); print(result_list[2])
            # print("Last pose:"); print(result_list[-1])


if __name__=='__main__':
    rospy.init_node('action_server')
    MoveDroneClass()
    rospy.spin()