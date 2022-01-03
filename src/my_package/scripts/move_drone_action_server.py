#! /usr/bin/env python
import rospy
import actionlib
import time
from actionlib.msg import TestFeedback, TestResult, TestAction
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

class MoveDroneClass(object):

  # create messages that are used to publish feedback/result
  _feedback = TestFeedback()
  _result   = TestResult()

  def __init__(self):
    # creates the action server
    self._as = actionlib.SimpleActionServer("drone_as", TestAction, self.goal_callback, False)
    self._as.start()

    # Publisher to /cmd/vel
    self.move_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    self.move_msg = Twist()
    self.takeoff_pub = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
    self.takeoff_msg = Empty()
    self.land_pub = rospy.Publisher('/drone/land', Empty, queue_size=1)
    self.land_msg = Empty()
    
  def goal_callback(self, goal):
    # this callback is called when the action server is called.
    
    # helper variables
    rate = rospy.Rate(1)
    success = True

    # Taking off 5 sec
    for _ in range(5):
      while self.takeoff_pub.get_num_connections() < 1:  # wait for publisher connection
        continue
      self.takeoff_pub.publish(self.takeoff_msg)
      rospy.loginfo('Taking off...')
      rate.sleep()
    
    self._feedback.feedback = 0
    
    # Moving in a square
    startTime = time.time()
    for side in range(4):
      self._feedback.feedback += 1
      # publish info to the console for the user
      rospy.loginfo(' Moving in a square with size of %i: side %i' % (goal.goal, self._feedback.feedback))

      # check that preempt (cancelation) has not been requested by the action client
      if self._as.is_preempt_requested():
        rospy.loginfo('The goal has been cancelled/preempted')
        # the following line, sets the client in preempted state (goal cancelled)
        self._as.set_preempted()
        success = False
        break

      for i in range(goal.goal):
        self.move_msg.angular.z = 0
        if side == 0:
          self.move_msg.linear.x =  0.0
          self.move_msg.linear.y =  0.5
        elif side == 1:
          self.move_msg.linear.x =  0.5
          self.move_msg.linear.y =  0.0
        elif side == 2:
          self.move_msg.linear.x =  0.0
          self.move_msg.linear.y = -0.5
        else:
          self.move_msg.linear.x = -0.5
          self.move_msg.linear.y =  0.0
        while self.move_pub.get_num_connections() < 1:  # wait for publisher connection
          continue
        self.move_pub.publish(self.move_msg)
        time.sleep(1)

      # publish the feedback
      self._as.publish_feedback(self._feedback)
      
      rate.sleep()
    usedTime = time.time() - startTime

		# Landing
    for _ in range(5):
      self.move_msg.linear.x = 0
      self.move_msg.angular.z = 0
      while self.move_pub.get_num_connections() < 1:  # wait for publisher connection
        continue
      self.move_pub.publish(self.move_msg)
    
      while self.land_pub.get_num_connections() < 1:  # wait for publisher connection
        continue
      self.land_pub.publish(self.land_msg)
      rospy.loginfo('Landing...')
      rate.sleep()

    # at this point, either the goal has been achieved (success==true)
    # or the client preempted the goal (success==false)
    # If success, then we publish the final result (time used to move in square)
    # If not success, we do not publish anything in the result
    if success:
      self._result.result = int(usedTime)
      rospy.loginfo('Succeeded moving in a square of size %i' % goal.goal)
      self._as.set_succeeded(self._result)
      
if __name__ == '__main__':
  rospy.init_node('move_drone_in_square')
  MoveDroneClass()
  rospy.spin()