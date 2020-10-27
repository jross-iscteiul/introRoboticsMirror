#!/usr/bin/env python2


from nav_msgs.msg import Odometry
import rospy
import sensor_msgs.msg

class listen_topic:
    def __init__(self):
        rospy.loginfo("oi")

        rospy.init_node('listen_topic', anonymous=True)
        self.r = rospy.Rate(5.0)
        rospy.Subscriber('/odom', Odometry, self.callback)

                # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
    def callback(self,data):
        rospy.loginfo(data)




if __name__ == '__main__':
        listen_topic()

