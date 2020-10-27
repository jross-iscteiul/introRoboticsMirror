#!/usr/bin/env python2

import rospy
import sys
from std_msgs.msg import String
from turtlebot3_functionalities.msg import switchState;
FORWARD = 8
BACK=2
STOP=5
ROTATE_LEFT=4
SQUARE=69
def talker():

    pub = rospy.Publisher('state', switchState, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        choice = int(input("Input number%n"))
        rospy.loginfo("option changed/input rcvd")
        option = choice
       
        pub.publish(option)
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
