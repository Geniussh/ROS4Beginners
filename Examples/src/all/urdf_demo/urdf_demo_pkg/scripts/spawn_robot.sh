#!/bin/sh
#store the argument passed to the script
sleeptime=15

echo "Waiting for simulations to be ready"
sleep 20

echo "Wait Time ="$sleeptime
echo "Spawning Mira..."
roslaunch mira_description mira_complete.launch &
sleep $sleeptime

echo "Spawning Jibo..."
roslaunch jibo_description jibo_complete.launch &
sleep $sleeptime

echo "Spawning Gurdy..."
roslaunch gurdy_description gurdy_complete.launch &
echo "End of Spawning script."

#echo "Starting simulation..."
#sleep $sleeptime
#rosservice call /gazebo/unpause_physics "{}"
