;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_functionalities::switchState)
  (if (not (find-package "TURTLEBOT3_FUNCTIONALITIES"))
    (make-package "TURTLEBOT3_FUNCTIONALITIES"))
  (shadow 'switchState (find-package "TURTLEBOT3_FUNCTIONALITIES")))
(unless (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE")
  (make-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))

(in-package "ROS")
;;//! \htmlinclude switchState.msg.html


(intern "*FORWARD*" (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(shadow '*FORWARD* (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(defconstant turtlebot3_functionalities::switchState::*FORWARD* 8)
(intern "*BACK*" (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(shadow '*BACK* (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(defconstant turtlebot3_functionalities::switchState::*BACK* 2)
(intern "*STOP*" (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(shadow '*STOP* (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(defconstant turtlebot3_functionalities::switchState::*STOP* 5)
(intern "*ROTATE_LEFT*" (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(shadow '*ROTATE_LEFT* (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(defconstant turtlebot3_functionalities::switchState::*ROTATE_LEFT* 4)
(intern "*SQUARE*" (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(shadow '*SQUARE* (find-package "TURTLEBOT3_FUNCTIONALITIES::SWITCHSTATE"))
(defconstant turtlebot3_functionalities::switchState::*SQUARE* 69)
(defclass turtlebot3_functionalities::switchState
  :super ros::object
  :slots (_state ))

(defmethod turtlebot3_functionalities::switchState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int64 _state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _state) (= (length (_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_state . bv) 0) 0) s)
              (write-long (ash (elt (_state . bv) 1) -1) s))
             ((and (class _state) (= (length (_state . bv)) 1)) ;; big1
              (write-long (elt (_state . bv) 0) s)
              (write-long (if (>= _state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _state s)(write-long (if (>= _state 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _state
#+(or :alpha :irix6 :x86_64)
      (setf _state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get turtlebot3_functionalities::switchState :md5sum-) "9db11d2209d4e262a28bf3cb20c338c7")
(setf (get turtlebot3_functionalities::switchState :datatype-) "turtlebot3_functionalities/switchState")
(setf (get turtlebot3_functionalities::switchState :definition-)
      "int64 state
int64 FORWARD=8
int64 BACK=2
int64 STOP=5
int64 ROTATE_LEFT=4
int64 SQUARE=69


")



(provide :turtlebot3_functionalities/switchState "9db11d2209d4e262a28bf3cb20c338c7")


