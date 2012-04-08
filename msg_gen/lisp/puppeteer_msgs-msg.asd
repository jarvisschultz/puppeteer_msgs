
(cl:in-package :asdf)

(defsystem "puppeteer_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RobotCommands" :depends-on ("_package_RobotCommands"))
    (:file "_package_RobotCommands" :depends-on ("_package"))
    (:file "RobotPose" :depends-on ("_package_RobotPose"))
    (:file "_package_RobotPose" :depends-on ("_package"))
    (:file "Robots" :depends-on ("_package_Robots"))
    (:file "_package_Robots" :depends-on ("_package"))
    (:file "PointPlus" :depends-on ("_package_PointPlus"))
    (:file "_package_PointPlus" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))