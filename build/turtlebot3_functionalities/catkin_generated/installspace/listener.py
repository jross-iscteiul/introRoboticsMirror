#!/usr/bin/env python2

import rospy
from std_msgs.msg import String
from turtlebot3_functionalities.msg import switchState;
FORWARD = 8
BACK=2
STOP=5
ROTATE_LEFT=4
SQUARE=69
# to be able to publish Twist data (and move the robot)
import geometry_msgs.msg 
from geometry_msgs.msg import Twist

class listener:

        def __init__(self):
                rospy.on_shutdown(self.cleanup)
                self.pub_cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
                rospy.init_node('listener', anonymous=True)
                self.r = rospy.Rate(5.0)
                rospy.Subscriber('state', switchState, self.callback)

                # spin() simply keeps python from exiting until this node is stopped
                rospy.spin()

        def callback(self,data):       
                option =  data.state
                rospy.loginfo(rospy.get_caller_id() + 'I heard %s', option)

                if option == FORWARD:
                        self.pub_cmd_vel(self.move_forward) 
                if option== SQUARE:
                        self.move_forward_meters()
                        self.cleanup()
                        self.turn_left_90()
                        self.cleanup()
                        self.move_forward_meters()
                        self.cleanup()
                        self.turn_left_90()
                        self.cleanup()
                        self.move_forward_meters()
                        self.cleanup()
                        self.turn_left_90()
                        self.move_forward_meters()
                        self.cleanup()
                        self.turn_left_90()
                        self.cleanup()
                if option == BACK:
                        self.pub_cmd_vel.publish(self.move_back())
                if option == ROTATE_LEFT:
                        self.pub_cmd_vel.publish(self.turn_left_90())
                if option == STOP:
                        self.pub_cmd_vel.publish(self.stop())
                if option == GO_AROUND:
                        self.go_around()
               
        
                        
        def rotate_left( self):
                '''
                Rotate the robot by a certain angle
                '''
                # create empty message of Twist type (check http://docs.ros.org/api/geometry_msgs/html/msg/Twist.html)
                twist_msg = Twist()
                # liner speed
                twist_msg.linear.x = 0.0
                twist_msg.linear.y = 0.0
                twist_msg.linear.z = 0.0
                # angular speed
                twist_msg.angular.x = 0.0
                twist_msg.angular.y = 0.0
                twist_msg.angular.z = 0.3

                # publish Twist message to /robot_0/cmd_vel to move the robot
                rospy.loginfo("rotate left")
                return twist_msg
                

        def turn_left_90(self):
                twist = Twist()
                twist.angular.z = 1.57/2    # 45 deg/s * 2sec = 90 degrees
                for i in range(10):         # 10*5hz = 2sec
                        self.pub_cmd_vel.publish(twist)
                        self.r.sleep()
                rospy.loginfo("Done rotating")

        def move_forward_meters(self):

                twist_msg = Twist()
                twist_msg.linear.x = 0.17
                
                for i in range(25):         # 25*5hz(1/5) = 5sec
                        self.pub_cmd_vel.publish(twist_msg)
                        self.r.sleep()
                rospy.loginfo("Done moving forward")

        def move_forward( self):
                '''
                Move the robot forward some distance
                '''
                # create empty message of Twist type (check http://docs.ros.org/api/geometry_msgs/html/msg/Twist.html)
                twist_msg = Twist()
                # linear speed
                twist_msg.linear.x = 0.5
                twist_msg.linear.y = 0.0
                twist_msg.linear.z = 0.0
                # angular speed
                twist_msg.angular.x = 0.0
                twist_msg.angular.y = 0.0
                twist_msg.angular.z = 0.0

                # publish Twist message to /robot_0/cmd_vel to move the robot
                rospy.loginfo("move fw")
                return twist_msg
        
        def cleanup(self):
                # stop the robot!
                twist_msg = Twist()
                # linear speed
                twist_msg.linear.x = 0.0
                twist_msg.linear.y = 0.0
                twist_msg.linear.z = 0.0
                # angular speed
                twist_msg.angular.x = 0.0
                twist_msg.angular.y = 0.0
                twist_msg.angular.z = 0.0
                self.pub_cmd_vel.publish(twist_msg)

        def move_back( self):
                # create empty message of Twist type (check http://docs.ros.org/api/geometry_msgs/html/msg/Twist.html)
                twist_msg = Twist()
                # linear speed
                twist_msg.linear.x = -0.5
                twist_msg.linear.y = 0.0
                twist_msg.linear.z = 0.0
                # angular speed
                twist_msg.angular.x = 0.0
                twist_msg.angular.y = 0.0
                twist_msg.angular.z = 0.0

                # publish Twist message to /robot_0/cmd_vel to move the robot
                rospy.loginfo("move back")

                return twist_msg
        def stop( self):
                twist_msg = Twist()
                # linear speed
                twist_msg.linear.x = 0.0
                twist_msg.linear.y = 0.0
                twist_msg.linear.z = 0.0
                # angular speed
                twist_msg.angular.x = 0.0
                twist_msg.angular.y = 0.0
                twist_msg.angular.z = 0.0
                se
                # publish Twist message to /robot_0/cmd_vel to move the robot
                rospy.loginfo("stop")

                return twist_msg

if __name__ == '__main__':
        listener()
