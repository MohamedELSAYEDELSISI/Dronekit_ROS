// Auto-generated. Do not edit!

// (in-package ross.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class pose_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose_serviceRequest
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose_serviceRequest
    let len;
    let data = new pose_serviceRequest(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/pose_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd562f95ca92089ed9ca118a23535a58f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point pose
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose_serviceRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Point.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class pose_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Ack = null;
    }
    else {
      if (initObj.hasOwnProperty('Ack')) {
        this.Ack = initObj.Ack
      }
      else {
        this.Ack = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose_serviceResponse
    // Serialize message field [Ack]
    bufferOffset = _serializer.float32(obj.Ack, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose_serviceResponse
    let len;
    let data = new pose_serviceResponse(null);
    // Deserialize message field [Ack]
    data.Ack = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/pose_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed42a75d93fed3defa0b7c591c2281a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Ack
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose_serviceResponse(null);
    if (msg.Ack !== undefined) {
      resolved.Ack = msg.Ack;
    }
    else {
      resolved.Ack = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: pose_serviceRequest,
  Response: pose_serviceResponse,
  md5sum() { return 'dfade6cad8d25888383325cca23ea6eb'; },
  datatype() { return 'ross/pose_service'; }
};
