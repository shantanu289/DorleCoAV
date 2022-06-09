; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude trafficLights.msg.html

(cl:defclass <trafficLights> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (class
    :reader class
    :initarg :class
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (id
    :reader id
    :initarg :id
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16)))
)

(cl:defclass trafficLights (<trafficLights>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trafficLights>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trafficLights)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<trafficLights> is deprecated: use av_messages-msg:trafficLights instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <trafficLights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:position-val is deprecated.  Use av_messages-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'class-val :lambda-list '(m))
(cl:defmethod class-val ((m <trafficLights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:class-val is deprecated.  Use av_messages-msg:class instead.")
  (class m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <trafficLights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:id-val is deprecated.  Use av_messages-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trafficLights>) ostream)
  "Serializes a message object of type '<trafficLights>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'class) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trafficLights>) istream)
  "Deserializes a message object of type '<trafficLights>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'class) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trafficLights>)))
  "Returns string type for a message object of type '<trafficLights>"
  "av_messages/trafficLights")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trafficLights)))
  "Returns string type for a message object of type 'trafficLights"
  "av_messages/trafficLights")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trafficLights>)))
  "Returns md5sum for a message object of type '<trafficLights>"
  "5ca47be3250ec12d6b540eb18eb643e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trafficLights)))
  "Returns md5sum for a message object of type 'trafficLights"
  "5ca47be3250ec12d6b540eb18eb643e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trafficLights>)))
  "Returns full string definition for message of type '<trafficLights>"
  (cl:format cl:nil "geometry_msgs/Point position # position in x, y ,z in meters~%~%std_msgs/String class # string for the light mode~%~%std_msgs/Int16 id # unique object id for every traffic light~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trafficLights)))
  "Returns full string definition for message of type 'trafficLights"
  (cl:format cl:nil "geometry_msgs/Point position # position in x, y ,z in meters~%~%std_msgs/String class # string for the light mode~%~%std_msgs/Int16 id # unique object id for every traffic light~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trafficLights>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'class))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trafficLights>))
  "Converts a ROS message object to a list"
  (cl:list 'trafficLights
    (cl:cons ':position (position msg))
    (cl:cons ':class (class msg))
    (cl:cons ':id (id msg))
))
