#!/usr/bin/ python3 
import rospy 
from std_msgs.msg import String 

def callback(data):
  rospy.loginfo("%s", data.data)

def listerner(): 

    r=rospy.Subscriber("chatter",String,callback)
    o=rospy.init_node("listener",anonymous=True)
    rospy.spin()
    
    
    
if __name__=='__main__':
    listerner()
