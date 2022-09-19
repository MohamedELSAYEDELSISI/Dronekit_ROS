#!/usr/bin/python3
######################################################################################
import rospy 
from ross.msg import vehicle_status  
from dronekit import connect,VehicleMode,APIException,LocationGlobalRelative,Command
import time 
import socket 
import math 
#import exceptions 
import argparse 
from pymavlink import mavutil 
######################################################################################
#connection='127.0.0.1:14550'
connection='127.0.0.1:14552'
######################################################################################
def connect_my_vehicle():
    vechicle =connect(connection,baud=115200) 
    vechicle.wait_ready(True, raise_exception=False)
    return vechicle
##########################################################################################
My_Vehicle = connect_my_vehicle()
##########################################################################################
def Vehicle_status(): 
  global My_Vehicle
  rospy.init_node("Vehicle_status_info",anonymous=True)
  ros=rospy.Publisher("Vehicle_status",vehicle_status,queue_size=3)
  rate=rospy.Rate(30) 
  status =vehicle_status()
########################################################################################### 
  while not rospy.is_shutdown():
	  status.Battery_Status=My_Vehicle.battery
	  status.Velocity_Status=My_Vehicle.velocity
	  status.Alt_Status=My_Vehicle.location.global_relative_frame.alt
	  status.Position_x=My_Vehicle.location.local_frame.north
	  status.Position_y=My_Vehicle.location.local_frame.east
	  rospy.loginfo(status) 
	  ros.publish(status)
	  rate.sleep()
############################################################################################	  
if __name__ == '__main__':
   Vehicle_status()
############################################################################################
