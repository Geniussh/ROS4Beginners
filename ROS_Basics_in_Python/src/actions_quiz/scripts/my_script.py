#! /usr/bin/env python
import rospy
import actionlib
import time
from actions_quiz.msg import CustomActionMsgFeedback, CustomActionMsgResult, CustomActionMsgAction
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

class MoveDroneClass(object):

  # create messages that are used to publish feedback/result
  _feedback = CustomActionMsgFeedback()
  _result   = CustomActionMsgResult()

  def __init__(self):
    # creates the action server
    self._as = actionlib.SimpleActionServer("action_custom_msg_as", CustomActionMsgAction, self.goal_callback, False)
    self._as.start()

    # Publisher to /cmd/vel
    self.move_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    self.move_msg = Twist()
    self.takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
    self.takeoff_msg = Empty()
    self.land_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
    self.land_msg = Empty()
    
  def check_preempt(self):
    # check that preempt (cancelation) has not been requested by the action client
    if self._as.is_preempt_requested():
      rospy.loginfo('The goal has been cancelled/preempted')
      # the following line, sets the client in preempted state (goal cancelled)
      self._as.set_preempted()
      return False
    else:
      return True
  
  def goal_callback(self, goal):
    # this callback is called when the action server is called.
    
    # helper variables
    rate = rospy.Rate(1)
    success = True

    if goal.goal == "TAKEOFF":
      # Taking off 3 sec
      self._feedback.feedback = "Taking Off"
      for _ in range(3):
        success = self.check_preempt()
        if not success:
          break
        while self.takeoff_pub.get_num_connections() < 1:  # wait for publisher connection
          continue
        self.takeoff_pub.publish(self.takeoff_msg)
        rospy.loginfo('Taking off...')

        # publish the feedback
        self._as.publish_feedback(self._feedback)

        rate.sleep()
    
    elif goal.goal == "LAND":
      # Landing
      self._feedback.feedback = "Landing"
      for _ in range(3):
        success = self.check_preempt()
        if not success:
          break
        while self.land_pub.get_num_connections() < 1:  # wait for publisher connection
          continue
        self.land_pub.publish(self.land_msg)
        rospy.loginfo('Landing...')

        # publish the feedback
        self._as.publish_feedback(self._feedback)

        rate.sleep()

    # at this point, either the goal has been achieved (success==true)
    # or the client preempted the goal (success==false)
    # If success, then we publish the final result (time used to move in square)
    # If not success, we do not publish anything in the result
    if success:
      rospy.loginfo('Succeeded taking off/landing')
      self._as.set_succeeded(self._result)
      
if __name__ == '__main__':
  rospy.init_node('actions_quiz')
  MoveDroneClass()
  rospy.spin()