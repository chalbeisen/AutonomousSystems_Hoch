// Auto-generated. Do not edit!

// (in-package turtlesim_halbeisen.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StopControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_publishing = null;
    }
    else {
      if (initObj.hasOwnProperty('is_publishing')) {
        this.is_publishing = initObj.is_publishing
      }
      else {
        this.is_publishing = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopControlRequest
    // Serialize message field [is_publishing]
    bufferOffset = _serializer.bool(obj.is_publishing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopControlRequest
    let len;
    let data = new StopControlRequest(null);
    // Deserialize message field [is_publishing]
    data.is_publishing = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim_halbeisen/StopControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3cd757ae264dd63b16b775844045c5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_publishing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopControlRequest(null);
    if (msg.is_publishing !== undefined) {
      resolved.is_publishing = msg.is_publishing;
    }
    else {
      resolved.is_publishing = false
    }

    return resolved;
    }
};

class StopControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopControlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopControlResponse
    let len;
    let data = new StopControlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim_halbeisen/StopControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopControlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StopControlRequest,
  Response: StopControlResponse,
  md5sum() { return 'e90fd0c296d28562ef619e70f6278695'; },
  datatype() { return 'turtlesim_halbeisen/StopControl'; }
};
