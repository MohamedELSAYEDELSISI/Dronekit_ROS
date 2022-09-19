#!/usr/bin/python3
######################################################################################
import rospy 
from ross.msg import vehicle_status  
from ross.srv import takeoff, takeoffResponse, takeoffRequest
from ross.srv import pose_service, pose_serviceResponse, pose_serviceRequest
from dronekit import connect,VehicleMode,APIException,LocationGlobalRelative,Command
import time 
import socket 
import math 
#import exceptions 
import argparse 
from pymavlink import mavutil 
######################################################################################
#connection='127.0.0.1:14550'
connection='127.0.0.1:14555'
######################################################################################
def connect_my_vehicle():
    vechicle =connect(connection,baud=115200) 
    vechicle.wait_ready(True, raise_exception=False)
    return vechicle
######################################################################################
My_Vehicle = connect_my_vehicle()
######################################################################################
def arming_vehicle(h): 
              global My_Vehicle
              while My_Vehicle.is_armable != True:
                 time.sleep(0.2)
              #############################################
              My_Vehicle.mode =VehicleMode("GUIDED")
              My_Vehicle.armed = True
              ##############################################
              while My_Vehicle.mode != "GUIDED":
                 time.sleep(0.5)
              ###################################################
              while My_Vehicle.armed != True:
                time.sleep(1)
              print("The vehicle now is armed\n")
              time.sleep(0.5)
              ###################################################
              My_Vehicle.simple_takeoff(h)
              ###################################################
              while True:
                   print("Current Alt_H %d" % My_Vehicle.location.global_relative_frame.alt)
                   if My_Vehicle.location.global_relative_frame.alt>=0.95*h:
                      break
                   time.sleep(1)
                   print("Target reached to the required highet: %d" % My_Vehicle.location.global_relative_frame.alt)
                   return None 	 
######################################################################################################################
def Callback_Takeoff_Service(request):
     H = request.Height
     arming_vehicle(H)
     return takeoffResponse(ok = 1 )
#######################################################################################################################
def Takeoff_Service():
    rospy.init_node("Takeoff_Service_Node")
    service = rospy.Service("Takeoff_Service",takeoff,Callback_Takeoff_Service)
    rospy.spin()
#######################################################################################################################   
if __name__ == '__main__':

   while True:
   
     Takeoff_Service()
     

    
     
