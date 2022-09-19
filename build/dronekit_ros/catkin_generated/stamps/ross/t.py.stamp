#!/usr/bin/python3
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

connection = '127.0.0.1:14550'

def connect_my_vehicle():
    vechicle =connect(connection,wait_ready=True , baud=5700) 
    #vechicle.wait_ready(True, raise_exception=False)
    return vechicle

My_Vehicle = connect_my_vehicle()

def arming_vehicle(h): 
              global My_Vehicle
              while My_Vehicle.is_armable != True:
                 time.sleep(0.2)
              print("Now the vehicle is armed \n")
              #############################################
              My_Vehicle.mode =VehicleMode("GUIDED")
              My_Vehicle.armed = True
              
              while My_Vehicle.mode != "GUIDED":
                 time.sleep(0.5)
              print("Now the vehicle mode is in Guided mode \n")
              ###################################################
              while My_Vehicle.armed != True:
                time.sleep(1)
              print("The vehicle now is armed\n")
              time.sleep(0.5)
              ###################################################
              My_Vehicle.simple_takeoff(h)
              
              while True:
                   print("current Alt_H %d" % My_Vehicle.location.global_relative_frame.alt)
                   if My_Vehicle.location.global_relative_frame.alt>=0.95*h:
                      break
                   time.sleep(1)
                   print("Target reached to the required highet: %d" % My_Vehicle.location.global_relative_frame.alt)
                   return None 
	 

def callback_takeoff_service(request):
     H = request.Height
     arming_vehicle(H)
     return takeoffResponse(ok = 1 )
     
     
     
def callback_pose_service(req): 
     x = req.pose.x
     y = req.pose.y
     z = req.pose.z
     Nav_LOCAL_Postion(x,y,z)
     
      


	  

def Takeoff_Service_Service():
    rospy.init_node("takeoff_Service_node")
    service = rospy.Service("takeoff_service",takeoff,callback_takeoff_service)
    rospy.spin()
  

'''def Takeoff_Client(Height): 
       rospy.init_node("takeoff_client_node")
       rospy.wait_for_service("takeoff_service")
       rate =rospy.Rate(30) 
       while not rospy.is_shutdown(): 
         try: 
           M1=rospy.ServiceProxy("takeoff_service",takeoff)
           response=M1(Height)
           rospy.loginfo(response.feedback)
           rate.sleep()
         except rospy.ServiceException as e: 
           print("Failed Service")'''
       




def Pose_Service():
    rospy.init_node("Pose_Service_node")
    service = rospy.Service("Pose_Service",pose_service,callback_pose_service)


"""
def Land_Service():



def Pose_Service():



def RTL_Service():

"""



     
if __name__ == '__main__':
   while True:
     Takeoff_Service_Service()
     

    
     
