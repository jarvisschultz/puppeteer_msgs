
(cl:in-package :asdf)

(defsystem "command_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "position_request" :depends-on ("_package_position_request"))
    (:file "_package_position_request" :depends-on ("_package"))
    (:file "speed_command" :depends-on ("_package_speed_command"))
    (:file "_package_speed_command" :depends-on ("_package"))
  ))