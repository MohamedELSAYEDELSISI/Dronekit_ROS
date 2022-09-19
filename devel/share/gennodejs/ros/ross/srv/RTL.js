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

class RTLRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTLRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTLRequest
    let len;
    let data = new RTLRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/RTLRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTLRequest(null);
    return resolved;
    }
};

class RTLResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confirm_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('confirm_mode')) {
        this.confirm_mode = initObj.confirm_mode
      }
      else {
        this.confirm_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTLResponse
    // Serialize message field [confirm_mode]
    bufferOffset = _serializer.bool(obj.confirm_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTLResponse
    let len;
    let data = new RTLResponse(null);
    // Deserialize message field [confirm_mode]
    data.confirm_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ross/RTLResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c7b48717ccfef833a363078363def6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool confirm_mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTLResponse(null);
    if (msg.confirm_mode !== undefined) {
      resolved.confirm_mode = msg.confirm_mode;
    }
    else {
      resolved.confirm_mode = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RTLRequest,
  Response: RTLResponse,
  md5sum() { return '6c7b48717ccfef833a363078363def6f'; },
  datatype() { return 'ross/RTL'; }
};
