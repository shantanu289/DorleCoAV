// Auto-generated. Do not edit!

// (in-package av_messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let object = require('./object.js');
let laneDetections = require('./laneDetections.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.obstacles = null;
      this.drivable_route = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
      if (initObj.hasOwnProperty('drivable_route')) {
        this.drivable_route = initObj.drivable_route
      }
      else {
        this.drivable_route = new laneDetections();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type map
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = object.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [drivable_route]
    bufferOffset = laneDetections.serialize(obj.drivable_route, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type map
    let len;
    let data = new map(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = object.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [drivable_route]
    data.drivable_route = laneDetections.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.obstacles.forEach((val) => {
      length += object.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'av_messages/map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '507b8d3aceb65739aa0ff50d944e3b63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header 
    
    av_messages/object[] obstacles
    av_messages/laneDetections drivable_route
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
    MSG: av_messages/object
    # A standard object message for perception
    
    geometry_msgs/Point position # position in x, y ,z in meters
    std_msgs/String class # string for the actual object class, i.e. tree, pedestrian, car, truck, etc.
    
    std_msgs/String status # wether the object is static/dynamic in nature etc.
    geometry_msgs/Pose2D object_state_dt # Velocity in x, y, theta of a dynamic object
    
    std_msgs/Int16 id # unique object id for every object
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: std_msgs/Int16
    int16 data
    
    ================================================================================
    MSG: av_messages/laneDetections
    # tbd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new map(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = object.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    if (msg.drivable_route !== undefined) {
      resolved.drivable_route = laneDetections.Resolve(msg.drivable_route)
    }
    else {
      resolved.drivable_route = new laneDetections()
    }

    return resolved;
    }
};

module.exports = map;
