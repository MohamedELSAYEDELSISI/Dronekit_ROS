#!/usr/bin/python3
######################################################################################
import rospy 
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
connection='127.0.0.1:14554'
######################################################################################
def connect_my_vehicle():
    vechicle =connect(connection,baud=115200) 
    vechicle.wait_ready(True, raise_exception=False)
    return vechicle
######################################################################################
My_Vehicle = connect_my_vehicle()
######################################################################################
def Nav_Local_Postion(Vx,Vy,Vz):
    global My_Vehicle
    Nav_Funcation_Control=My_Vehicle.message_factory.set_position_target_local_ned_encode(0,0,0,mavutil.mavlink.MAV_FRAME_LOCAL_OFFSET_NED,0b0000111111000111,0,0,0,Vx,Vy,Vz,0,0,0,0,0)
    My_Vehicle.send_mavlink(Nav_Funcation_Control)
    My_Vehicle.flush()
######################################################################################
def Callback_Pose_Service(req): 
     Nav_Local_Postion(req.pose.x,req.pose.y,req.pose.z)
     return pose_serviceResponse(Ack = 1)
######################################################################################         
def Pose_Service():
    rospy.init_node("Pose_Service_node")
    service = rospy.Service("Pose_Service",pose_service,Callback_Pose_Service)
    rospy.spin()
######################################################################################     
if __name__ == '__main__':
   Pose_Service()
   
     
  
