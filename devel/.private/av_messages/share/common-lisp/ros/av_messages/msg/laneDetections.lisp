; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude laneDetections.msg.html

(cl:defclass <laneDetections> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass laneDetections (<laneDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <laneDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'laneDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<laneDetections> is deprecated: use av_messages-msg:laneDetections instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <laneDetections>) ostream)
  "Serializes a message object of type '<laneDetections>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <laneDetections>) istream)
  "Deserializes a message object of type '<laneDetections>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<laneDetections>)))
  "Returns string type for a message object of type '<laneDetections>"
  "av_messages/laneDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'laneDetections)))
  "Returns string type for a message object of type 'laneDetections"
  "av_messages/laneDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<laneDetections>)))
  "Returns md5sum for a message object of type '<laneDetections>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'laneDetections)))
  "Returns md5sum for a message object of type 'laneDetections"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<laneDetections>)))
  "Returns full string definition for message of type '<laneDetections>"
  (cl:format cl:nil "# tbd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'laneDetections)))
  "Returns full string definition for message of type 'laneDetections"
  (cl:format cl:nil "# tbd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <laneDetections>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <laneDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'laneDetections
))
