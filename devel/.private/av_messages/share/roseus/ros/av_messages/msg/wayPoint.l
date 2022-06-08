;; Auto-generated. Do not edit!


(when (boundp 'av_messages::wayPoint)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'wayPoint (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::WAYPOINT")
  (make-package "AV_MESSAGES::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude wayPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass av_messages::wayPoint
  :super ros::object
  :slots (_position _desired_velocity ))

(defmethod av_messages::wayPoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point32 :init))
    ((:desired_velocity __desired_velocity) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _desired_velocity (float __desired_velocity))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:desired_velocity
   (&optional __desired_velocity)
   (if __desired_velocity (setq _desired_velocity __desired_velocity)) _desired_velocity)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _position
    (send _position :serialization-length)
    ;; float64 _desired_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _position
       (send _position :serialize s)
     ;; float64 _desired_velocity
       (sys::poke _desired_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _desired_velocity
     (setq _desired_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get av_messages::wayPoint :md5sum-) "0a0914eff681fe061d257add5a3ce12e")
(setf (get av_messages::wayPoint :datatype-) "av_messages/wayPoint")
(setf (get av_messages::wayPoint :definition-)
      "# A standard message for local planner waypoints

geometry_msgs/Point32 position # position in x,y for local planner and latitude longitude for global planner

float64 desired_velocity
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :av_messages/wayPoint "0a0914eff681fe061d257add5a3ce12e")


