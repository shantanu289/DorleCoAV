; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude velAccel.msg.html

(cl:defclass <velAccel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass velAccel (<velAccel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <velAccel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'velAccel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<velAccel> is deprecated: use av_messages-msg:velAccel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <velAccel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:header-val is deprecated.  Use av_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <velAccel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:vel-val is deprecated.  Use av_messages-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <velAccel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:accel-val is deprecated.  Use av_messages-msg:accel instead.")
  (accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <velAccel>) ostream)
  "Serializes a message object of type '<velAccel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <velAccel>) istream)
  "Deserializes a message object of type '<velAccel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<velAccel>)))
  "Returns string type for a message object of type '<velAccel>"
  "av_messages/velAccel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'velAccel)))
  "Returns string type for a message object of type 'velAccel"
  "av_messages/velAccel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<velAccel>)))
  "Returns md5sum for a message object of type '<velAccel>"
  "3636f8484fe5af4c13afe61d470942f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'velAccel)))
  "Returns md5sum for a message object of type 'velAccel"
  "3636f8484fe5af4c13afe61d470942f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<velAccel>)))
  "Returns full string definition for message of type '<velAccel>"
  (cl:format cl:nil "# Vehicle Longitudinal Velocity and Acceleration av_messages~%std_msgs/Header header~%~%geometry_msgs/Pose2D vel # Velocity in x, y, theta~%geometry_msgs/Pose2D accel # Acceleration in x, y, theta~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'velAccel)))
  "Returns full string definition for message of type 'velAccel"
  (cl:format cl:nil "# Vehicle Longitudinal Velocity and Acceleration av_messages~%std_msgs/Header header~%~%geometry_msgs/Pose2D vel # Velocity in x, y, theta~%geometry_msgs/Pose2D accel # Acceleration in x, y, theta~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <velAccel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <velAccel>))
  "Converts a ROS message object to a list"
  (cl:list 'velAccel
    (cl:cons ':header (header msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':accel (accel msg))
))
