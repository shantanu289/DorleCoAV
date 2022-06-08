; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude map.msg.html

(cl:defclass <map> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector av_messages-msg:object)
   :initform (cl:make-array 0 :element-type 'av_messages-msg:object :initial-element (cl:make-instance 'av_messages-msg:object)))
   (drivable_route
    :reader drivable_route
    :initarg :drivable_route
    :type av_messages-msg:laneDetections
    :initform (cl:make-instance 'av_messages-msg:laneDetections)))
)

(cl:defclass map (<map>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <map>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'map)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<map> is deprecated: use av_messages-msg:map instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:header-val is deprecated.  Use av_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:obstacles-val is deprecated.  Use av_messages-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'drivable_route-val :lambda-list '(m))
(cl:defmethod drivable_route-val ((m <map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:drivable_route-val is deprecated.  Use av_messages-msg:drivable_route instead.")
  (drivable_route m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <map>) ostream)
  "Serializes a message object of type '<map>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drivable_route) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <map>) istream)
  "Deserializes a message object of type '<map>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'av_messages-msg:object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drivable_route) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<map>)))
  "Returns string type for a message object of type '<map>"
  "av_messages/map")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'map)))
  "Returns string type for a message object of type 'map"
  "av_messages/map")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<map>)))
  "Returns md5sum for a message object of type '<map>"
  "507b8d3aceb65739aa0ff50d944e3b63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'map)))
  "Returns md5sum for a message object of type 'map"
  "507b8d3aceb65739aa0ff50d944e3b63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<map>)))
  "Returns full string definition for message of type '<map>"
  (cl:format cl:nil "std_msgs/Header header ~%~%av_messages/object[] obstacles~%av_messages/laneDetections drivable_route~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: av_messages/object~%# A standard object message for perception~%~%geometry_msgs/Point position # position in x, y ,z in meters~%std_msgs/String class # string for the actual object class, i.e. tree, pedestrian, car, truck, etc.~%~%std_msgs/String status # wether the object is static/dynamic in nature etc.~%geometry_msgs/Pose2D object_state_dt # Velocity in x, y, theta of a dynamic object~%~%std_msgs/Int16 id # unique object id for every object~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: av_messages/laneDetections~%# tbd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'map)))
  "Returns full string definition for message of type 'map"
  (cl:format cl:nil "std_msgs/Header header ~%~%av_messages/object[] obstacles~%av_messages/laneDetections drivable_route~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: av_messages/object~%# A standard object message for perception~%~%geometry_msgs/Point position # position in x, y ,z in meters~%std_msgs/String class # string for the actual object class, i.e. tree, pedestrian, car, truck, etc.~%~%std_msgs/String status # wether the object is static/dynamic in nature etc.~%geometry_msgs/Pose2D object_state_dt # Velocity in x, y, theta of a dynamic object~%~%std_msgs/Int16 id # unique object id for every object~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: av_messages/laneDetections~%# tbd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <map>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drivable_route))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <map>))
  "Converts a ROS message object to a list"
  (cl:list 'map
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':drivable_route (drivable_route msg))
))
