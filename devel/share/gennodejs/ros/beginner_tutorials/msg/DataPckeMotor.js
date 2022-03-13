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

class DataPckeMotor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.titikX = null;
      this.titikY = null;
      this.target_sudut = null;
      this.kecepatan_x = null;
      this.kecepatan_y = null;
      this.kecepatan_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('titikX')) {
        this.titikX = initObj.titikX
      }
      else {
        this.titikX = 0;
      }
      if (initObj.hasOwnProperty('titikY')) {
        this.titikY = initObj.titikY
      }
      else {
        this.titikY = 0;
      }
      if (initObj.hasOwnProperty('target_sudut')) {
        this.target_sudut = initObj.target_sudut
      }
      else {
        this.target_sudut = 0;
      }
      if (initObj.hasOwnProperty('kecepatan_x')) {
        this.kecepatan_x = initObj.kecepatan_x
      }
      else {
        this.kecepatan_x = 0;
      }
      if (initObj.hasOwnProperty('kecepatan_y')) {
        this.kecepatan_y = initObj.kecepatan_y
      }
      else {
        this.kecepatan_y = 0;
      }
      if (initObj.hasOwnProperty('kecepatan_theta')) {
        this.kecepatan_theta = initObj.kecepatan_theta
      }
      else {
        this.kecepatan_theta = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataPckeMotor
    // Serialize message field [titikX]
    bufferOffset = _serializer.int16(obj.titikX, buffer, bufferOffset);
    // Serialize message field [titikY]
    bufferOffset = _serializer.int16(obj.titikY, buffer, bufferOffset);
    // Serialize message field [target_sudut]
    bufferOffset = _serializer.int16(obj.target_sudut, buffer, bufferOffset);
    // Serialize message field [kecepatan_x]
    bufferOffset = _serializer.int16(obj.kecepatan_x, buffer, bufferOffset);
    // Serialize message field [kecepatan_y]
    bufferOffset = _serializer.int16(obj.kecepatan_y, buffer, bufferOffset);
    // Serialize message field [kecepatan_theta]
    bufferOffset = _serializer.int16(obj.kecepatan_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataPckeMotor
    let len;
    let data = new DataPckeMotor(null);
    // Deserialize message field [titikX]
    data.titikX = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [titikY]
    data.titikY = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_sudut]
    data.target_sudut = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [kecepatan_x]
    data.kecepatan_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [kecepatan_y]
    data.kecepatan_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [kecepatan_theta]
    data.kecepatan_theta = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/DataPckeMotor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cefda5650f612b3eb74c90eb8fd012ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 titikX
    int16 titikY
    int16 target_sudut
    int16 kecepatan_x
    int16 kecepatan_y
    int16 kecepatan_theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataPckeMotor(null);
    if (msg.titikX !== undefined) {
      resolved.titikX = msg.titikX;
    }
    else {
      resolved.titikX = 0
    }

    if (msg.titikY !== undefined) {
      resolved.titikY = msg.titikY;
    }
    else {
      resolved.titikY = 0
    }

    if (msg.target_sudut !== undefined) {
      resolved.target_sudut = msg.target_sudut;
    }
    else {
      resolved.target_sudut = 0
    }

    if (msg.kecepatan_x !== undefined) {
      resolved.kecepatan_x = msg.kecepatan_x;
    }
    else {
      resolved.kecepatan_x = 0
    }

    if (msg.kecepatan_y !== undefined) {
      resolved.kecepatan_y = msg.kecepatan_y;
    }
    else {
      resolved.kecepatan_y = 0
    }

    if (msg.kecepatan_theta !== undefined) {
      resolved.kecepatan_theta = msg.kecepatan_theta;
    }
    else {
      resolved.kecepatan_theta = 0
    }

    return resolved;
    }
};

module.exports = DataPckeMotor;
