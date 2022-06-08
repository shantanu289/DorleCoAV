; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude lanes.msg.html

(cl:defclass <lanes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass lanes (<lanes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lanes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lanes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<lanes> is deprecated: use av_messages-msg:lanes instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lanes>) ostream)
  "Serializes a message object of type '<lanes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lanes>) istream)
  "Deserializes a message object of type '<lanes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lanes>)))
  "Returns string type for a message object of type '<lanes>"
  "av_messages/lanes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lanes)))
  "Returns string type for a message object of type 'lanes"
  "av_messages/lanes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lanes>)))
  "Returns md5sum for a message object of type '<lanes>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lanes)))
  "Returns md5sum for a message object of type 'lanes"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lanes>)))
  "Returns full string definition for message of type '<lanes>"
  (cl:format cl:nil "# tbd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lanes)))
  "Returns full string definition for message of type 'lanes"
  (cl:format cl:nil "# tbd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lanes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lanes>))
  "Converts a ROS message object to a list"
  (cl:list 'lanes
))
