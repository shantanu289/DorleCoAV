;; Auto-generated. Do not edit!


(when (boundp 'av_messages::controlCommand)
  (if (not (find-package "AV_MESSAGES"))
    (make-package "AV_MESSAGES"))
  (shadow 'controlCommand (find-package "AV_MESSAGES")))
(unless (find-package "AV_MESSAGES::CONTROLCOMMAND")
  (make-package "AV_MESSAGES::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude controlCommand.msg.html


(defclass av_messages::controlCommand
  :super ros::object
  :slots (_throttle _brake _steering ))

(defmethod av_messages::controlCommand
  (:init
   (&key
    ((:throttle __throttle) 0.0)
    ((:brake __brake) 0.0)
    ((:steering __steering) 0.0)
    )
   (send-super :init)
   (setq _throttle (float __throttle))
   (setq _brake (float __brake))
   (setq _steering (float __steering))
   self)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:serialization-length
   ()
   (+
    ;; float32 _throttle
    4
    ;; float32 _brake
    4
    ;; float32 _steering
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get av_messages::controlCommand :md5sum-) "3968da8b9a8303204ceef45dc1b7beb2")
(setf (get av_messages::controlCommand :datatype-) "av_messages/controlCommand")
(setf (get av_messages::controlCommand :definition-)
      "# Message for final control commands

float32 throttle # 0.0 - 1.0 throttle range
float32 brake # 0.0 - 1.0 brake range
float32 steering # -angle to + angle range ## ANGLE TO BE DEFINED ACCORDING TO VEHICLE MODEL

")



(provide :av_messages/controlCommand "3968da8b9a8303204ceef45dc1b7beb2")


