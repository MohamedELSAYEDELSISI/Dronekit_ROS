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

class landRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confirm = null;
    }
    else {
      if (initObj.hasOwnProperty('confirm')) {
        this.confirm = initObj.confirm
      }
      else {
        this.confirm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type landRequest
    // Serialize message field [confirm]
    bufferOffset = _serializer.float32(obj.confirm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type landRequest
    let len;
    let data = new landRequest(null);
    // Deserialize message field [confirm]
    data.confirm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/landRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '044386efde34978b6072108ea234900f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 confirm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new landRequest(null);
    if (msg.confirm !== undefined) {
      resolved.confirm = msg.confirm;
    }
    else {
      resolved.confirm = 0.0
    }

    return resolved;
    }
};

class landResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LAND_DONE = null;
    }
    else {
      if (initObj.hasOwnProperty('LAND_DONE')) {
        this.LAND_DONE = initObj.LAND_DONE
      }
      else {
        this.LAND_DONE = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type landResponse
    // Serialize message field [LAND_DONE]
    bufferOffset = _serializer.float32(obj.LAND_DONE, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type landResponse
    let len;
    let data = new landResponse(null);
    // Deserialize message field [LAND_DONE]
    data.LAND_DONE = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/landResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '676a86751451f61dc0f200335e3956db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 LAND_DONE
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new landResponse(null);
    if (msg.LAND_DONE !== undefined) {
      resolved.LAND_DONE = msg.LAND_DONE;
    }
    else {
      resolved.LAND_DONE = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: landRequest,
  Response: landResponse,
  md5sum() { return '8418e6fd9e3883e9757a349fc01ca1f9'; },
  datatype() { return 'ross/land'; }
};
