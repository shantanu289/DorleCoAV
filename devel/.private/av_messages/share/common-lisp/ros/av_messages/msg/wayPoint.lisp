; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude wayPoint.msg.html

(cl:defclass <wayPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (desired_velocity
    :reader desired_velocity
    :initarg :desired_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass wayPoint (<wayPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wayPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wayPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<wayPoint> is deprecated: use av_messages-msg:wayPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <wayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:position-val is deprecated.  Use av_messages-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'desired_velocity-val :lambda-list '(m))
(cl:defmethod desired_velocity-val ((m <wayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:desired_velocity-val is deprecated.  Use av_messages-msg:desired_velocity instead.")
  (desired_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wayPoint>) ostream)
  "Serializes a message object of type '<wayPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wayPoint>) istream)
  "Deserializes a message object of type '<wayPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wayPoint>)))
  "Returns string type for a message object of type '<wayPoint>"
  "av_messages/wayPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wayPoint)))
  "Returns string type for a message object of type 'wayPoint"
  "av_messages/wayPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wayPoint>)))
  "Returns md5sum for a message object of type '<wayPoint>"
  "0a0914eff681fe061d257add5a3ce12e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wayPoint)))
  "Returns md5sum for a message object of type 'wayPoint"
  "0a0914eff681fe061d257add5a3ce12e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wayPoint>)))
  "Returns full string definition for message of type '<wayPoint>"
  (cl:format cl:nil "# A standard message for local planner waypoints~%~%geometry_msgs/Point32 position # position in x,y for local planner and latitude longitude for global planner~%~%float64 desired_velocity~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wayPoint)))
  "Returns full string definition for message of type 'wayPoint"
  (cl:format cl:nil "# A standard message for local planner waypoints~%~%geometry_msgs/Point32 position # position in x,y for local planner and latitude longitude for global planner~%~%float64 desired_velocity~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wayPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wayPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'wayPoint
    (cl:cons ':position (position msg))
    (cl:cons ':desired_velocity (desired_velocity msg))
))
