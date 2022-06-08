;; Auto-generated. Do not edit!


(when (boundp 'av_messages::laneDetections)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'laneDetections (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::LANEDETECTIONS")
  (make-package "AV_MESSAGES::LANEDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude laneDetections.msg.html


(defclass av_messages::laneDetections
  :super ros::object
  :slots ())

(defmethod av_messages::laneDetections
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get av_messages::laneDetections :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get av_messages::laneDetections :datatype-) "av_messages/laneDetections")
(setf (get av_messages::laneDetections :definition-)
      "# tbd
")



(provide :av_messages/laneDetections "d41d8cd98f00b204e9800998ecf8427e")


