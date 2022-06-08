; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude destination.msg.html

(cl:defclass <destination> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass destination (<destination>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <destination>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'destination)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<destination> is deprecated: use av_messages-msg:destination instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <destination>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:header-val is deprecated.  Use av_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <destination>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:latitude-val is deprecated.  Use av_messages-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <destination>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:longitude-val is deprecated.  Use av_messages-msg:longitude instead.")
  (longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <destination>) ostream)
  "Serializes a message object of type '<destination>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <destination>) istream)
  "Deserializes a message object of type '<destination>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<destination>)))
  "Returns string type for a message object of type '<destination>"
  "av_messages/destination")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'destination)))
  "Returns string type for a message object of type 'destination"
  "av_messages/destination")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<destination>)))
  "Returns md5sum for a message object of type '<destination>"
  "79197bb5a58d33017c590e24adb874d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'destination)))
  "Returns md5sum for a message object of type 'destination"
  "79197bb5a58d33017c590e24adb874d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<destination>)))
  "Returns full string definition for message of type '<destination>"
  (cl:format cl:nil "# A standard message for the global target coordinates~%std_msgs/Header header ~%~%float32 latitude~%float32 longitude~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'destination)))
  "Returns full string definition for message of type 'destination"
  (cl:format cl:nil "# A standard message for the global target coordinates~%std_msgs/Header header ~%~%float32 latitude~%float32 longitude~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <destination>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <destination>))
  "Converts a ROS message object to a list"
  (cl:list 'destination
    (cl:cons ':header (header msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
))
