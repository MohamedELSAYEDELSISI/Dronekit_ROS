# Dronekit_ROS
This repo contains a software package Dronekit-ROS. In this repo, you can control your Px4 drone using ROS service commands but in the form Dronekit with ROS. The package contains a publisher node which streams the basic data of the drone for example, battery level, the postion on the three axes, the Altiude and the velocity. The software package is a form of MAVProxy control commands, but with Dronekit and ROS. 

                               Software Layers
                               
![](/images/image-01.PNG)                                 

                               Software prerequisites
                               
1-Ardupilot firmware SITL simulator 

2-Gazebo with IRIS drone module or any drone module

3-MAVProxy

4-QgroundControl or Mission planner 

                               Steps for connecting the software pacakge to Simulator drone 
Firstly, go to directory of your SITL and select the "ArduCopter" folder and then the next command on the terimnal

![](/images/image-04.PNG)

The output after typing the first command as follows,

![](/images/image-06.PNG)

Secondly, go to the place where you downloaded ardupilot-gazebo models and run the iris model as on the terminal command, 

![](/images/image-07.PNG)

The result will be as follows, 

![](/images/image-08.PNG)

Thirdly, go and run the mavproxy where it will act as a handler connection between the multiple ros service files and nodes and the main simulated drone, the drone works on main port 14550 where the other ports are for ros services and nodes, you can select other ports as you like, but you have to handle the edit ports in the ros script files, please don't change the ports if you still doesnt familair with ports and ip or didn't understand what i am saying !.



Fourthly, run the Dronekit-ROS package through typing on terminal "roslaunch ross Dronekit_ROS_Package.launch", the output it will be as follows, 

![](/images/image-10.PNG)

Fifthly, once the package connect with the simulated drone, the services will work, you can check if the services work or not through typing on terminal as follows, 

![](/images/image-11.PNG)

For the publisher node streams Basic data of drone, you should see this data on the same terminal of launching the Dronekit_package, 

![](/images/image-12.PNG)

Sixthly, You can type the service in the form in terminal for example takeoff land Pose_Service as follows, 

![](/images/image-14.PNG)

![](/images/image-15.PNG)
                            
                              RESULT
                            
The result will be as follows as example of Pose_service, note that the Pose_service can move your drone at any point in the 3D, X,Y and Z axies, just rembembr up -number down +number  

![](/images/image-16.PNG)
![](/images/image-30.PNG)
![](/images/image-31.PNG)
![](/images/image-32.PNG)
![](/images/image-33.PNG)
![](/images/image-34.PNG)



                               Is package work on a real drone or only with SITL? 
                               
The package works on the real drone and had been tested. You can use compainon computer and linked with the PX4 and get access to control the drone via linked your compainon computer with internet through wifi or you can control the drone directly from your computer through plugin your telemtry with your computer (this way, i tested too, it works but sometime yes and some time no). anyway for anycase just change the mavproxy command the line where the SITL AS IN THE THIRD steps change only "127.0.0.1:14550" to the real USB port where the compainon computer will be connected for example in case of telemtry you can follow the next,

![](/images/image-18.PNG)


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
