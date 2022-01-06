#!/bin/sh

echo "Jibo Waiting for Gurdy simulation to be ready"
rostopic echo -n1 /gurdy/upperlegM3_lowerlegM3_joint_position_controller/state

echo "Spawning Jibo..."
roslaunch jibo_description jibo_complete.launch