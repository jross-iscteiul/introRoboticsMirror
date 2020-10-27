#!/usr/bin/env python2

import rospy
import geometry_msgs.msg 
import sensor_msgs.msg

from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

class collision_avoidance:

    def __init__(self):
        rospy.loginfo("Collision avoidance started")   
        rospy.init_node('collision_avoidance', anonymous=True)
        self.r = rospy.Rate(5.0)
        self.pub = rospy.Publisher('/cmd_vel', Twist,queue_size=10)
        self.dodge_right=False
        self.dodge_left=False

        rospy.Subscriber('/scan', LaserScan, self.callback1)
        rospy.spin()


    def callback1(self,data):
        twist= Twist()
        if min(data.ranges[0:20])>1 and min(data.ranges[339:359])>1:
            if self.dodge_right or self.dodge_left:
                if self.dodge_right and min(data.ranges[230:270])>0.5:
                    rospy.loginfo("Counter dodging to the left")   

                    twist.angular.z=0.15
                    self.pub.publish(twist)

                    rospy.sleep(0.2)
                    self.dodge = False
                else:
                    if self.dodge_left and min(data.ranges[30:90])>0.5:
                        rospy.loginfo("Counter dodging to the right")   

                        twist.angular.z=-0.15
                        self.pub.publish(twist)

                        rospy.sleep(0.2)
                        self.dodge_left = False
            else:
                twist.linear.x = 0.15
                self.pub.publish(twist)
        else:
            if min(data.ranges[310:339])>0.7 :
                rospy.loginfo("Dodging left")   

                twist.angular.z =0.15
                self.pub.publish(twist)
                self.dodge_left=True

            else:
                if min(data.ranges[46:135]) > 0.7 :
                    rospy.loginfo("Dodging right") 
                    twist.angular.z=-0.15
                    self.pub.publish(twist)
                    self.dodge_right=True

                
        

    
if __name__=="__main__":
    collision_avoidance()

    