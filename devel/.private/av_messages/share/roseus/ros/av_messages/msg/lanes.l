;; Auto-generated. Do not edit!


(when (boundp 'av_messages::lanes)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'lanes (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::LANES")
  (make-package "AV_MESSAGES::LANES"))

(in-package "ROS")
;;//! \htmlinclude lanes.msg.html


(defclass av_messages::lanes
  :super ros::object
  :slots ())

(defmethod av_messages::lanes
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

(setf (get av_messages::lanes :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get av_messages::lanes :datatype-) "av_messages/lanes")
(setf (get av_messages::lanes :definition-)
      "# tbd

")



(provide :av_messages/lanes "d41d8cd98f00b204e9800998ecf8427e")


