;; Auto-generated. Do not edit!


(when (boundp 'av_messages::velAccel)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'velAccel (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::VELACCEL")
  (make-package "AV_MESSAGES::VELACCEL"))

(in-package "ROS")
;;//! \htmlinclude velAccel.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass av_messages::velAccel
  :super ros::object
  :slots (_header _vel _accel ))

(defmethod av_messages::velAccel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vel __vel) (instance geometry_msgs::Pose2D :init))
    ((:accel __accel) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vel __vel)
   (setq _accel __accel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose2D _vel
    (send _vel :serialization-length)
    ;; geometry_msgs/Pose2D _accel
    (send _accel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose2D _vel
       (send _vel :serialize s)
     ;; geometry_msgs/Pose2D _accel
       (send _accel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose2D _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; geometry_msgs/Pose2D _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;;
   self)
  )

(setf (get av_messages::velAccel :md5sum-) "3636f8484fe5af4c13afe61d470942f7")
(setf (get av_messages::velAccel :datatype-) "av_messages/velAccel")
(setf (get av_messages::velAccel :definition-)
      "# Vehicle Longitudinal Velocity and Acceleration av_messages
std_msgs/Header header

geometry_msgs/Pose2D vel # Velocity in x, y, theta
geometry_msgs/Pose2D accel # Acceleration in x, y, theta
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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :av_messages/velAccel "3636f8484fe5af4c13afe61d470942f7")


