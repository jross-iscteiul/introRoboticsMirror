// Auto-generated. Do not edit!

// (in-package turtlebot3_functionalities.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class switchState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type switchState
    // Serialize message field [state]
    bufferOffset = _serializer.int64(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type switchState
    let len;
    let data = new switchState(null);
    // Deserialize message field [state]
    data.state = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlebot3_functionalities/switchState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9db11d2209d4e262a28bf3cb20c338c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 state
    int64 FORWARD=8
    int64 BACK=2
    int64 STOP=5
    int64 ROTATE_LEFT=4
    int64 SQUARE=69
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new switchState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
switchState.Constants = {
  FORWARD: 8,
  BACK: 2,
  STOP: 5,
  ROTATE_LEFT: 4,
  SQUARE: 69,
}

module.exports = switchState;
