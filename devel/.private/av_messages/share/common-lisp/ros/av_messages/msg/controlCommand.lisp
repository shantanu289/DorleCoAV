; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude controlCommand.msg.html

(cl:defclass <controlCommand> (roslisp-msg-protocol:ros-message)
  ((throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0))
)

(cl:defclass controlCommand (<controlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<controlCommand> is deprecated: use av_messages-msg:controlCommand instead.")))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <controlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:throttle-val is deprecated.  Use av_messages-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <controlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:brake-val is deprecated.  Use av_messages-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <controlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:steering-val is deprecated.  Use av_messages-msg:steering instead.")
  (steering m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controlCommand>) ostream)
  "Serializes a message object of type '<controlCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controlCommand>) istream)
  "Deserializes a message object of type '<controlCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controlCommand>)))
  "Returns string type for a message object of type '<controlCommand>"
  "av_messages/controlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controlCommand)))
  "Returns string type for a message object of type 'controlCommand"
  "av_messages/controlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controlCommand>)))
  "Returns md5sum for a message object of type '<controlCommand>"
  "3968da8b9a8303204ceef45dc1b7beb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controlCommand)))
  "Returns md5sum for a message object of type 'controlCommand"
  "3968da8b9a8303204ceef45dc1b7beb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controlCommand>)))
  "Returns full string definition for message of type '<controlCommand>"
  (cl:format cl:nil "# Message for final control commands~%~%float32 throttle # 0.0 - 1.0 throttle range~%float32 brake # 0.0 - 1.0 brake range~%float32 steering # -angle to + angle range ## ANGLE TO BE DEFINED ACCORDING TO VEHICLE MODEL~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controlCommand)))
  "Returns full string definition for message of type 'controlCommand"
  (cl:format cl:nil "# Message for final control commands~%~%float32 throttle # 0.0 - 1.0 throttle range~%float32 brake # 0.0 - 1.0 brake range~%float32 steering # -angle to + angle range ## ANGLE TO BE DEFINED ACCORDING TO VEHICLE MODEL~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controlCommand>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'controlCommand
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':steering (steering msg))
))
