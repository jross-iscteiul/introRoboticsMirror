
(cl:in-package :asdf)

(defsystem "turtlebot3_functionalities-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "switchState" :depends-on ("_package_switchState"))
    (:file "_package_switchState" :depends-on ("_package"))
  ))