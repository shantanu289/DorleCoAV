// Auto-generated. Do not edit!

// (in-package av_messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class trafficLights {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.class = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('class')) {
        this.class = initObj.class
      }
      else {
        this.class = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new std_msgs.msg.Int16();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type trafficLights
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [class]
    bufferOffset = std_msgs.msg.String.serialize(obj.class, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = std_msgs.msg.Int16.serialize(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type trafficLights
    let len;
    let data = new trafficLights(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [class]
    data.class = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = std_msgs.msg.Int16.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.class);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'av_messages/trafficLights';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ca47be3250ec12d6b540eb18eb643e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point position # position in x, y ,z in meters
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new trafficLights(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.class !== undefined) {
      resolved.class = std_msgs.msg.String.Resolve(msg.class)
    }
    else {
      resolved.class = new std_msgs.msg.String()
    }

    if (msg.id !== undefined) {
      resolved.id = std_msgs.msg.Int16.Resolve(msg.id)
    }
    else {
      resolved.id = new std_msgs.msg.Int16()
    }

    return resolved;
    }
};

module.exports = trafficLights;
