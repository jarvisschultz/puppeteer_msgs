; Auto-generated. Do not edit!


(cl:in-package command_msgs-srv)


;//! \htmlinclude speed_command-request.msg.html

(cl:defclass <speed_command-request> (roslisp-msg-protocol:ros-message)
  ((robot_index
    :reader robot_index
    :initarg :robot_index
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (Vleft
    :reader Vleft
    :initarg :Vleft
    :type cl:float
    :initform 0.0)
   (Vright
    :reader Vright
    :initarg :Vright
    :type cl:float
    :initform 0.0)
   (Vtop
    :reader Vtop
    :initarg :Vtop
    :type cl:float
    :initform 0.0)
   (div
    :reader div
    :initarg :div
    :type cl:integer
    :initform 0))
)

(cl:defclass speed_command-request (<speed_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name command_msgs-srv:<speed_command-request> is deprecated: use command_msgs-srv:speed_command-request instead.")))

(cl:ensure-generic-function 'robot_index-val :lambda-list '(m))
(cl:defmethod robot_index-val ((m <speed_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:robot_index-val is deprecated.  Use command_msgs-srv:robot_index instead.")
  (robot_index m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <speed_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:type-val is deprecated.  Use command_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'Vleft-val :lambda-list '(m))
(cl:defmethod Vleft-val ((m <speed_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:Vleft-val is deprecated.  Use command_msgs-srv:Vleft instead.")
  (Vleft m))

(cl:ensure-generic-function 'Vright-val :lambda-list '(m))
(cl:defmethod Vright-val ((m <speed_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:Vright-val is deprecated.  Use command_msgs-srv:Vright instead.")
  (Vright m))

(cl:ensure-generic-function 'Vtop-val :lambda-list '(m))
(cl:defmethod Vtop-val ((m <speed_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:Vtop-val is deprecated.  Use command_msgs-srv:Vtop instead.")
  (Vtop m))

(cl:ensure-generic-function 'div-val :lambda-list '(m))
(cl:defmethod div-val ((m <speed_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:div-val is deprecated.  Use command_msgs-srv:div instead.")
  (div m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_command-request>) ostream)
  "Serializes a message object of type '<speed_command-request>"
  (cl:let* ((signed (cl:slot-value msg 'robot_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vleft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vright))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vtop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'div)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_command-request>) istream)
  "Deserializes a message object of type '<speed_command-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vleft) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vright) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vtop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'div) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_command-request>)))
  "Returns string type for a service object of type '<speed_command-request>"
  "command_msgs/speed_commandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_command-request)))
  "Returns string type for a service object of type 'speed_command-request"
  "command_msgs/speed_commandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_command-request>)))
  "Returns md5sum for a message object of type '<speed_command-request>"
  "b92633d2045f118521cf5b24ea085990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_command-request)))
  "Returns md5sum for a message object of type 'speed_command-request"
  "b92633d2045f118521cf5b24ea085990")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_command-request>)))
  "Returns full string definition for message of type '<speed_command-request>"
  (cl:format cl:nil "int32 robot_index~%char type~%float32 Vleft~%float32 Vright~%float32 Vtop~%int32 div~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_command-request)))
  "Returns full string definition for message of type 'speed_command-request"
  (cl:format cl:nil "int32 robot_index~%char type~%float32 Vleft~%float32 Vright~%float32 Vtop~%int32 div~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_command-request>))
  (cl:+ 0
     4
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_command-request
    (cl:cons ':robot_index (robot_index msg))
    (cl:cons ':type (type msg))
    (cl:cons ':Vleft (Vleft msg))
    (cl:cons ':Vright (Vright msg))
    (cl:cons ':Vtop (Vtop msg))
    (cl:cons ':div (div msg))
))
;//! \htmlinclude speed_command-response.msg.html

(cl:defclass <speed_command-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass speed_command-response (<speed_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name command_msgs-srv:<speed_command-response> is deprecated: use command_msgs-srv:speed_command-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <speed_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader command_msgs-srv:error-val is deprecated.  Use command_msgs-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_command-response>) ostream)
  "Serializes a message object of type '<speed_command-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_command-response>) istream)
  "Deserializes a message object of type '<speed_command-response>"
    (cl:setf (cl:slot-value msg 'error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_command-response>)))
  "Returns string type for a service object of type '<speed_command-response>"
  "command_msgs/speed_commandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_command-response)))
  "Returns string type for a service object of type 'speed_command-response"
  "command_msgs/speed_commandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_command-response>)))
  "Returns md5sum for a message object of type '<speed_command-response>"
  "b92633d2045f118521cf5b24ea085990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_command-response)))
  "Returns md5sum for a message object of type 'speed_command-response"
  "b92633d2045f118521cf5b24ea085990")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_command-response>)))
  "Returns full string definition for message of type '<speed_command-response>"
  (cl:format cl:nil "bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_command-response)))
  "Returns full string definition for message of type 'speed_command-response"
  (cl:format cl:nil "bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_command-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_command-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speed_command)))
  'speed_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speed_command)))
  'speed_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_command)))
  "Returns string type for a service object of type '<speed_command>"
  "command_msgs/speed_command")
