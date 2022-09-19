# Dronekit_ROS
This repo contains a software package Dronekit-ROS. In this repo, you can control your Px4 drone using ROS service commands but in the form Dronekit with ROS. The package contains a publisher node which streams the basic data of the drone for example, battery level, the postion on the three axes, the Altiude and the velocity. The software package is a form of MAVProxy control commands, but with Dronekit and ROS. 

                               Software Layers
                               
![](/image-01.PNG)                                 

                               Software prerequisites
                               
1-Ardupilot firmware SITL simulator 

2-Gazebo with IRIS drone module or any drone module

3-MAVProxy

4-QgroundControl or Mission planner 

                               Simulation the Software ROS package on Software System in the Loop
                                                
Before running the software on a real drone vehicle, it's important to test the software code on a simulation tool.
This tool is called the "SITL" system in the loop, which allows us to test the ROS package on a virtual simulated
drone vehicle. Therefore, it allows us to see the behaviour of the code on the virtual simulated drone. This drone
behaves exactly like what would happen on a real drone vehicle. SITL supports ardupilot firmware, which is used in
this project. In order to run the simulated drone, it's supposed to run "sim_vehicle.py" on the terminal. The
sim_vehicle will generate the binary files exactly like the real drone and other important files. The "sim_vehicle"
will also generate a port on local ip address 127.0.0.1:5760, where it will connect to Qgroundcontrol, as well as two
output ports on local ip address 127.0.0.1:14550 and 14551. These two ports will be the master ports for the five
Dronekit_ROS_packages. The five nodes will be connected to the following ports: 127.0.0.1: 14552, 14553, 14554,
and 14555. in order to connect the five nodes to the master port. It's a must to run the next command which uses
Mavproxy ("mavproxy.py --master 127.0.0.1:14550" --out 127.0.0.1:14552" --out 127.0.0.1:14553" --out
127.0.0.1:14554-out 127.0.0.1:14555"). After that, the ROS nodes are ready to follow any instructions, as well as
the simulated drone can be seen on Qground control. For example, if the simulated drone is to be simulated on a
gazebo, the entire procedure is the same except for the first command, which will be "sim_vehicle.py -f gazebo-iris"
as well as loading the gazebo world with the simulated drone
