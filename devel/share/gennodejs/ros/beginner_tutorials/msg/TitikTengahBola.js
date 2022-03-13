// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TitikTengahBola {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centerX = null;
      this.centerY = null;
    }
    else {
      if (initObj.hasOwnProperty('centerX')) {
        this.centerX = initObj.centerX
      }
      else {
        this.centerX = 0;
      }
      if (initObj.hasOwnProperty('centerY')) {
        this.centerY = initObj.centerY
      }
      else {
        this.centerY = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TitikTengahBola
    // Serialize message field [centerX]
    bufferOffset = _serializer.int16(obj.centerX, buffer, bufferOffset);
    // Serialize message field [centerY]
    bufferOffset = _serializer.int16(obj.centerY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TitikTengahBola
    let len;
    let data = new TitikTengahBola(null);
    // Deserialize message field [centerX]
    data.centerX = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [centerY]
    data.centerY = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/TitikTengahBola';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc2e74fce2d0b019ce044dd5a8d4fd1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 centerX
    int16 centerY
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TitikTengahBola(null);
    if (msg.centerX !== undefined) {
      resolved.centerX = msg.centerX;
    }
    else {
      resolved.centerX = 0
    }

    if (msg.centerY !== undefined) {
      resolved.centerY = msg.centerY;
    }
    else {
      resolved.centerY = 0
    }

    return resolved;
    }
};

module.exports = TitikTengahBola;
