// Auto-generated. Do not edit!

// (in-package ross.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class vehicle_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Battery_Status = null;
      this.Velocity_Status = null;
      this.Alt_Status = null;
      this.Position_x = null;
      this.Position_y = null;
    }
    else {
      if (initObj.hasOwnProperty('Battery_Status')) {
        this.Battery_Status = initObj.Battery_Status
      }
      else {
        this.Battery_Status = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('Velocity_Status')) {
        this.Velocity_Status = initObj.Velocity_Status
      }
      else {
        this.Velocity_Status = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('Alt_Status')) {
        this.Alt_Status = initObj.Alt_Status
      }
      else {
        this.Alt_Status = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('Position_x')) {
        this.Position_x = initObj.Position_x
      }
      else {
        this.Position_x = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('Position_y')) {
        this.Position_y = initObj.Position_y
      }
      else {
        this.Position_y = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vehicle_status
    // Serialize message field [Battery_Status]
    bufferOffset = std_msgs.msg.String.serialize(obj.Battery_Status, buffer, bufferOffset);
    // Serialize message field [Velocity_Status]
    bufferOffset = std_msgs.msg.String.serialize(obj.Velocity_Status, buffer, bufferOffset);
    // Serialize message field [Alt_Status]
    bufferOffset = std_msgs.msg.String.serialize(obj.Alt_Status, buffer, bufferOffset);
    // Serialize message field [Position_x]
    bufferOffset = std_msgs.msg.String.serialize(obj.Position_x, buffer, bufferOffset);
    // Serialize message field [Position_y]
    bufferOffset = std_msgs.msg.String.serialize(obj.Position_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vehicle_status
    let len;
    let data = new vehicle_status(null);
    // Deserialize message field [Battery_Status]
    data.Battery_Status = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [Velocity_Status]
    data.Velocity_Status = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [Alt_Status]
    data.Alt_Status = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [Position_x]
    data.Position_x = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [Position_y]
    data.Position_y = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.Battery_Status);
    length += std_msgs.msg.String.getMessageSize(object.Velocity_Status);
    length += std_msgs.msg.String.getMessageSize(object.Alt_Status);
    length += std_msgs.msg.String.getMessageSize(object.Position_x);
    length += std_msgs.msg.String.getMessageSize(object.Position_y);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ross/vehicle_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aaafa5c64ffa127d3610f378ae59fa7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String Battery_Status
    std_msgs/String Velocity_Status
    std_msgs/String Alt_Status 
    std_msgs/String Position_x
    std_msgs/String Position_y
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vehicle_status(null);
    if (msg.Battery_Status !== undefined) {
      resolved.Battery_Status = std_msgs.msg.String.Resolve(msg.Battery_Status)
    }
    else {
      resolved.Battery_Status = new std_msgs.msg.String()
    }

    if (msg.Velocity_Status !== undefined) {
      resolved.Velocity_Status = std_msgs.msg.String.Resolve(msg.Velocity_Status)
    }
    else {
      resolved.Velocity_Status = new std_msgs.msg.String()
    }

    if (msg.Alt_Status !== undefined) {
      resolved.Alt_Status = std_msgs.msg.String.Resolve(msg.Alt_Status)
    }
    else {
      resolved.Alt_Status = new std_msgs.msg.String()
    }

    if (msg.Position_x !== undefined) {
      resolved.Position_x = std_msgs.msg.String.Resolve(msg.Position_x)
    }
    else {
      resolved.Position_x = new std_msgs.msg.String()
    }

    if (msg.Position_y !== undefined) {
      resolved.Position_y = std_msgs.msg.String.Resolve(msg.Position_y)
    }
    else {
      resolved.Position_y = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = vehicle_status;
