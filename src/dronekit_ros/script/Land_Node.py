#!/usr/bin/python3
######################################################################################
import rospy 
from ross.srv import land, landResponse
from dronekit import connect,VehicleMode,APIException,LocationGlobalRelative,Command
import time 
import socket 
import math 
#import exceptions 
import argparse 
from pymavlink import mavutil
######################################################################################
#connection='127.0.0.1:14550'
connection='127.0.0.1:14553'
######################################################################################
def connect_my_vehicle():
    vechicle =connect(connection,baud=115200)
    vechicle.wait_ready(True, raise_exception=False)
    return vechicle
######################################################################################
My_Vehicle = connect_my_vehicle()
######################################################################################
def Land_mode(h):
	  global My_Vehicle
	  if h ==1:
	    My_Vehicle.mode=VehicleMode("LAND")
	  if h ==2:
	    My_Vehicle.mode=VehicleMode("RTL")
	  return None 
######################################################################################
def callback_land_service(m): 
    Land_mode(m.confirm)
    return landResponse(LAND_DONE = 1)
######################################################################################
def Land_Service():
    rospy.init_node("Land_Service_node")
    service = rospy.Service("Land_Service",land,callback_land_service)
    rospy.spin()
######################################################################################    
if __name__ == '__main__':
     Land_Service()

