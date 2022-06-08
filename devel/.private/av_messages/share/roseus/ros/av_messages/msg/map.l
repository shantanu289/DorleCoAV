;; Auto-generated. Do not edit!


(when (boundp 'av_messages::map)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'map (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::MAP")
  (make-package "AV_MESSAGES::MAP"))

(in-package "ROS")
;;//! \htmlinclude map.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass av_messages::map
  :super ros::object
  :slots (_header _obstacles _drivable_route ))

(defmethod av_messages::map
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) ())
    ((:drivable_route __drivable_route) (instance av_messages::laneDetections :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   (setq _drivable_route __drivable_route)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:drivable_route
   (&rest __drivable_route)
   (if (keywordp (car __drivable_route))
       (send* _drivable_route __drivable_route)
     (progn
       (if __drivable_route (setq _drivable_route (car __drivable_route)))
       _drivable_route)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; av_messages/object[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; av_messages/laneDetections _drivable_route
    (send _drivable_route :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; av_messages/object[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;; av_messages/laneDetections _drivable_route
       (send _drivable_route :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; av_messages/object[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance av_messages::object :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; av_messages/laneDetections _drivable_route
     (send _drivable_route :deserialize buf ptr-) (incf ptr- (send _drivable_route :serialization-length))
   ;;
   self)
  )

(setf (get av_messages::map :md5sum-) "507b8d3aceb65739aa0ff50d944e3b63")
(setf (get av_messages::map :datatype-) "av_messages/map")
(setf (get av_messages::map :definition-)
      "std_msgs/Header header 

av_messages/object[] obstacles
av_messages/laneDetections drivable_route
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: av_messages/object
# A standard object message for perception

geometry_msgs/Point position # position in x, y ,z in meters
std_msgs/String class # string for the actual object class, i.e. tree, pedestrian, car, truck, etc.

std_msgs/String status # wether the object is static/dynamic in nature etc.
geometry_msgs/Pose2D object_state_dt # Velocity in x, y, theta of a dynamic object

std_msgs/Int16 id # unique object id for every object
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: std_msgs/Int16
int16 data

================================================================================
MSG: av_messages/laneDetections
# tbd
")



(provide :av_messages/map "507b8d3aceb65739aa0ff50d944e3b63")


