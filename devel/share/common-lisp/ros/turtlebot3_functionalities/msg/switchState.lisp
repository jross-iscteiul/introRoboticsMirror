; Auto-generated. Do not edit!


(cl:in-package turtlebot3_functionalities-msg)


;//! \htmlinclude switchState.msg.html

(cl:defclass <switchState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass switchState (<switchState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <switchState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'switchState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_functionalities-msg:<switchState> is deprecated: use turtlebot3_functionalities-msg:switchState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <switchState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_functionalities-msg:state-val is deprecated.  Use turtlebot3_functionalities-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<switchState>)))
    "Constants for message type '<switchState>"
  '((:FORWARD . 8)
    (:BACK . 2)
    (:STOP . 5)
    (:ROTATE_LEFT . 4)
    (:SQUARE . 69))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'switchState)))
    "Constants for message type 'switchState"
  '((:FORWARD . 8)
    (:BACK . 2)
    (:STOP . 5)
    (:ROTATE_LEFT . 4)
    (:SQUARE . 69))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <switchState>) ostream)
  "Serializes a message object of type '<switchState>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <switchState>) istream)
  "Deserializes a message object of type '<switchState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<switchState>)))
  "Returns string type for a message object of type '<switchState>"
  "turtlebot3_functionalities/switchState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switchState)))
  "Returns string type for a message object of type 'switchState"
  "turtlebot3_functionalities/switchState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<switchState>)))
  "Returns md5sum for a message object of type '<switchState>"
  "9db11d2209d4e262a28bf3cb20c338c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'switchState)))
  "Returns md5sum for a message object of type 'switchState"
  "9db11d2209d4e262a28bf3cb20c338c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<switchState>)))
  "Returns full string definition for message of type '<switchState>"
  (cl:format cl:nil "int64 state~%int64 FORWARD=8~%int64 BACK=2~%int64 STOP=5~%int64 ROTATE_LEFT=4~%int64 SQUARE=69~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'switchState)))
  "Returns full string definition for message of type 'switchState"
  (cl:format cl:nil "int64 state~%int64 FORWARD=8~%int64 BACK=2~%int64 STOP=5~%int64 ROTATE_LEFT=4~%int64 SQUARE=69~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <switchState>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <switchState>))
  "Converts a ROS message object to a list"
  (cl:list 'switchState
    (cl:cons ':state (state msg))
))
