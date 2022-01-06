#! /usr/bin/env python
import rospy
import actionlib
from path_exam.msg import RecordOdomAction, RecordOdomResult, RecordOdomGoal
from std_srvs.srv import Trigger, TriggerRequest

def done_callback(status, result):
    print("Last Pose:\n%s" % str(result.result[-1]))

# Start action client to record the next 20 sec
rospy.init_node('drone_action_service_client')
client = actionlib.SimpleActionClient('/rec_pose_as', RecordOdomAction)
client.wait_for_server()
goal = RecordOdomGoal()
client.send_goal(goal, done_cb=done_callback)

# Start service client to move the drone
rospy.wait_for_service('/my_service')
service_client = rospy.ServiceProxy('/my_service', Trigger)
request = TriggerRequest()
service_result = service_client(request)

client.wait_for_result()