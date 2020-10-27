#!/usr/bin/env python2

import rospy

import geometry_msgs.msg
from sensor_msgs.msg import LaserScan
#from sensor_msgs.msg import tfMessage
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Pose
import time
import tf

import tf.msg


class listen_topic:
    def __init__(self):
        rospy.on_shutdown(self.writeToFile)
        rospy.loginfo("Listening to add to file")
        mode = input("OPMODE: 0 - TF (Ground truth) | 1 - scan | 2- odom (original) | 3- odom (ekf) | 4 - odom (amcl) \n")
        rospy.init_node('amigo', anonymous=False)
        self.r = rospy.Rate(5.0)
        self.dict = {}
        self.n = None
        if mode == 0:
            rospy.Subscriber('/tf', tf.msg.tfMessage, self.callback)
        else:
            if mode == 1:
                rospy.Subscriber('/scan', LaserScan, self.callback)

            else:
                self._pose=Pose()
                if mode ==2:
                    rospy.Subscriber('/odom', Odometry, self.callback)
                else:
                    if mode==3:
                        rospy.Subscriber('/odom', Odometry, self.callback)
                    else:
                        if mode == 4:
                            rospy.Subscriber('/odom', Odometry, self.callback)
                # spin() simply keeps  from exiting until this node is stopped
        rospy.spin()
    def callback(self,data):
        #time=data.header.stamp.secs
        #pose= data.pose.pose
        #self.dict[time] = pose
        
        time = data.transforms[0].header.stamp.secs
        if data.transforms[0].header.frame_id == "odom" and data.transforms[0].child_frame_id == "base_footprint":
            self.dict[time] = data.transforms[0].transform
	    rospy.loginfo(time)	
	    rospy.loginfo(data.transforms[0].transform)
            rospy.sleep(500)
	    

    def writeToFile(self):
        rospy.loginfo("WRITING TO FILE")
        file = open("ground_truth_tf.txt", "w")
        for key, value in self.dict.iteritems():
            if value:
                file.write(str(key) + ':\n----------\n' + str(value) + '\n===========\n')
        file.close()
if __name__ == '__main__':
        listen_topic()
