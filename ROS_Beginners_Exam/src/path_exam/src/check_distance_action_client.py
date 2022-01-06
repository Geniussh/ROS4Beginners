#! /usr/bin/env python
import rospy
import time
import actionlib
from path_exam.msg import RecordOdomAction, RecordOdomResult, RecordOdomGoal


# definition of the done callback. This will be called when DONE
# is received from the action server
def done_callback(status, result):
    print("Last Pose:\n%s" % str(result.result[-1]))

# initializes the action client node
rospy.init_node('drone_action_client')

# create the connection to the action server
client = actionlib.SimpleActionClient('/rec_pose_as', RecordOdomAction)
# waits until the action server is up and running
client.wait_for_server()

# creates a goal to send to the action server
goal = RecordOdomGoal()

# sends the goal to the action server, specifying which feedback function
# to call when feedback received
client.send_goal(goal, done_cb=done_callback)

# Uncomment these lines to test goal preemption:
#time.sleep(3.0)
#client.cancel_goal()  # would cancel the goal 3 seconds after starting

# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time 
# status = client.get_state()
# check the client API link below for more info

client.wait_for_result()

print("Done.")
# print(client.get_result())