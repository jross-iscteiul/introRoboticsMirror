#!/usr/bin/env python2

import rospy
import sys
from std_msgs.msg import String
from turtlebot3_functionalities.msg import switchState
import geometry_msgs.msg 
from geometry_msgs.msg import Pose
from nav_msgs.msg import Odometry
FORWARD = 8
BACK=2
STOP=5
ROTATE_LEFT=4
SQUARE = 69
pub = rospy.Publisher('state', switchState, queue_size=10)
current_angle =0
x=0
y=0
z=0
rz=0
PI= 3.1415926
def talker():
    rospy.Subscriber('/odom', Odometry, callback)
    rospy.Subscriber('/Pose', Pose, callback)
    pub = rospy.Publisher('state', switchState, queue_size=10)
    rospy.init_node('squaretalker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    #doSquare()
    rospy.spin()


def callback(data):
    #rospy.loginfo(data)
    #rospy.loginfo("x: %f ",round(data.pose.pose.orientation.x,1))
    #rospy.loginfo("y: %f ",round(data.pose.pose.orientation.y,1))
    #rospy.loginfo("z: %f ",round(data.pose.pose.orientation.z,1))

    
    current_pose = data.pose
    global x=round(current_pose.pose.position.x,1)
    rospy.loginfo("VALOR LIDO x:  %f ",current_pose.pose.position.x)

    global y= round(current_pose.pose.position.y,1)
    global z= round(current_pose.pose.position.y,1)
    rx = round(current_pose.pose.orientation.x,1)
    ry =round(current_pose.pose.orientation.y,1)
    global rz =round(current_pose.pose.orientation.z,3)
    

               
def doSquare():
    while(True):
        rospy.loginfo("started")
        forward()
        rotate()


def forward():
    init_x= x
    pub.publish(FORWARD)
    rospy.loginfo("fw")

    while(abs(x-init_x) < 0.5):
        rospy.loginfo("x:  %f , init_x :%f",x, init_x)


        pass
    pub.publish(STOP)
        
def rotate():
    init_rz = rz
    pub.publish(ROTATE_LEFT)
    while(abs(rz<-init_rz) < PI/2):
        pass
    
    pub.publish(STOP)



    


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
