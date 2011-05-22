; Auto-generated. Do not edit!


(cl:in-package puppeteer_msgs-msg)


;//! \htmlinclude PointPlus.msg.html

(cl:defclass <PointPlus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (error
    :reader error
    :initarg :error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PointPlus (<PointPlus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointPlus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointPlus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name puppeteer_msgs-msg:<PointPlus> is deprecated: use puppeteer_msgs-msg:PointPlus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointPlus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppeteer_msgs-msg:header-val is deprecated.  Use puppeteer_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PointPlus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppeteer_msgs-msg:x-val is deprecated.  Use puppeteer_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PointPlus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppeteer_msgs-msg:y-val is deprecated.  Use puppeteer_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <PointPlus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppeteer_msgs-msg:z-val is deprecated.  Use puppeteer_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PointPlus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppeteer_msgs-msg:error-val is deprecated.  Use puppeteer_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointPlus>) ostream)
  "Serializes a message object of type '<PointPlus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointPlus>) istream)
  "Deserializes a message object of type '<PointPlus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointPlus>)))
  "Returns string type for a message object of type '<PointPlus>"
  "puppeteer_msgs/PointPlus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointPlus)))
  "Returns string type for a message object of type 'PointPlus"
  "puppeteer_msgs/PointPlus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointPlus>)))
  "Returns md5sum for a message object of type '<PointPlus>"
  "f7fcc93321d502f42d2ed163c509fd8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointPlus)))
  "Returns md5sum for a message object of type 'PointPlus"
  "f7fcc93321d502f42d2ed163c509fd8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointPlus>)))
  "Returns full string definition for message of type '<PointPlus>"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%bool error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointPlus)))
  "Returns full string definition for message of type 'PointPlus"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%bool error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointPlus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointPlus>))
  "Converts a ROS message object to a list"
  (cl:list 'PointPlus
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':error (error msg))
))
