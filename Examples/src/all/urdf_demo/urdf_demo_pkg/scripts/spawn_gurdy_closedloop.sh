#!/bin/sh

echo "Gurdy is Waiting for Mira simulation to be ready"
rostopic echo -n1 /mira/yaw_joint_position_controller/state

echo "Spawning Gurdy..."
roslaunch gurdy_description gurdy_complete.launch
