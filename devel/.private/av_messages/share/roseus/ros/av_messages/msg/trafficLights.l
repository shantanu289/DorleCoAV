;; Auto-generated. Do not edit!


(when (boundp 'av_messages::trafficLights)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'trafficLights (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::TRAFFICLIGHTS")
  (make-package "AV_MESSAGES::TRAFFICLIGHTS"))

(in-package "ROS")
;;//! \htmlinclude trafficLights.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass av_messages::trafficLights
  :super ros::object
  :slots (_position _class _id ))

(defmethod av_messages::trafficLights
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:class __class) (instance std_msgs::String :init))
    ((:id __id) (instance std_msgs::Int16 :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _class __class)
   (setq _id __id)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:class
   (&rest __class)
   (if (keywordp (car __class))
       (send* _class __class)
     (progn
       (if __class (setq _class (car __class)))
       _class)))
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; std_msgs/String _class
    (send _class :serialization-length)
    ;; std_msgs/Int16 _id
    (send _id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; std_msgs/String _class
       (send _class :serialize s)
     ;; std_msgs/Int16 _id
       (send _id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; std_msgs/String _class
     (send _class :deserialize buf ptr-) (incf ptr- (send _class :serialization-length))
   ;; std_msgs/Int16 _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;;
   self)
  )

(setf (get av_messages::trafficLights :md5sum-) "5ca47be3250ec12d6b540eb18eb643e2")
(setf (get av_messages::trafficLights :datatype-) "av_messages/trafficLights")
(setf (get av_messages::trafficLights :definition-)
      "geometry_msgs/Point position # position in x, y ,z in meters

std_msgs/String class # string for the light mode

std_msgs/Int16 id # unique object id for every traffic light
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
MSG: std_msgs/Int16
int16 data

")



(provide :av_messages/trafficLights "5ca47be3250ec12d6b540eb18eb643e2")


