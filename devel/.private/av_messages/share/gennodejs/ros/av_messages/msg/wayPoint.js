// Auto-generated. Do not edit!

// (in-package av_messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class wayPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.desired_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('desired_velocity')) {
        this.desired_velocity = initObj.desired_velocity
      }
      else {
        this.desired_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wayPoint
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [desired_velocity]
    bufferOffset = _serializer.float64(obj.desired_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wayPoint
    let len;
    let data = new wayPoint(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [desired_velocity]
    data.desired_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'av_messages/wayPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a0914eff681fe061d257add5a3ce12e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A standard message for local planner waypoints
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wayPoint(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point32.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point32()
    }

    if (msg.desired_velocity !== undefined) {
      resolved.desired_velocity = msg.desired_velocity;
    }
    else {
      resolved.desired_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = wayPoint;
