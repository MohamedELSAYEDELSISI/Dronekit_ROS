#!/usr/bin/ python3 
import rospy 
from ross.msg import vehicle_status  
from dronekit import connect,VehicleMode,APIException,LocationGlobalRelative,Command
import time 
import socket 
import math 
#import exceptions 
import argparse 
from pymavlink import mavutil  



def callback(msg):
    
   rospy.info(msg)
        
        
def listerner(): 
    rospy.init_node("Vehicle_status_info_sub",anonymous=True)
    ros_subs=rospy.Subscriber("Vehicle_status",vehicle_status,callback)
    rospy.spin()
    
    
    
if __name__=='__main__':
    listerner()
