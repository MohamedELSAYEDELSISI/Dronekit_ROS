// Auto-generated. Do not edit!

// (in-package ross.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class takeoffRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Height = null;
    }
    else {
      if (initObj.hasOwnProperty('Height')) {
        this.Height = initObj.Height
      }
      else {
        this.Height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type takeoffRequest
    // Serialize message field [Height]
    bufferOffset = _serializer.float32(obj.Height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type takeoffRequest
    let len;
    let data = new takeoffRequest(null);
    // Deserialize message field [Height]
    data.Height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/takeoffRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ccd79f4555d5c764e8e40707445fd8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new takeoffRequest(null);
    if (msg.Height !== undefined) {
      resolved.Height = msg.Height;
    }
    else {
      resolved.Height = 0.0
    }

    return resolved;
    }
};

class takeoffResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type takeoffResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.float32(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type takeoffResponse
    let len;
    let data = new takeoffResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/takeoffResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2991260901f1e54fdc610afd7d79eeb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new takeoffResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: takeoffRequest,
  Response: takeoffResponse,
  md5sum() { return 'ac516dd7f44daec312f7639f631f2f8d'; },
  datatype() { return 'ross/takeoff'; }
};
