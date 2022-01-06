#!/bin/sh

echo "Waiting for simulations to be ready"
rosservice call /gazebo/get_physics_properties "{}"
sleep 20

echo "Wait Time ="$sleeptime
echo "Spawning Mira..."
roslaunch mira_description mira_complete.launch &
rostopic echo -n1 /mira/yaw_joint_position_controller/state

echo "Spawning Jibo..."
roslaunch jibo_description jibo_complete.launch &
rostopic echo -n1 /jibo/body_head_joint_position_controller/state

echo "Spawning Gurdy..."
roslaunch gurdy_description gurdy_complete.launch &
rostopic echo -n1 /gurdy/upperlegM3_lowerlegM3_joint_position_controller/state

echo "End of Spawning script."
