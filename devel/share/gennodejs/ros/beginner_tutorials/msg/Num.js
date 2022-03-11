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

class Num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_name = null;
      this.last_name = null;
      this.data_int8 = null;
      this.data_int32 = null;
      this.data_int16 = null;
      this.data_float32 = null;
    }
    else {
      if (initObj.hasOwnProperty('first_name')) {
        this.first_name = initObj.first_name
      }
      else {
        this.first_name = '';
      }
      if (initObj.hasOwnProperty('last_name')) {
        this.last_name = initObj.last_name
      }
      else {
        this.last_name = '';
      }
      if (initObj.hasOwnProperty('data_int8')) {
        this.data_int8 = initObj.data_int8
      }
      else {
        this.data_int8 = 0;
      }
      if (initObj.hasOwnProperty('data_int32')) {
        this.data_int32 = initObj.data_int32
      }
      else {
        this.data_int32 = 0;
      }
      if (initObj.hasOwnProperty('data_int16')) {
        this.data_int16 = initObj.data_int16
      }
      else {
        this.data_int16 = 0;
      }
      if (initObj.hasOwnProperty('data_float32')) {
        this.data_float32 = initObj.data_float32
      }
      else {
        this.data_float32 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Num
    // Serialize message field [first_name]
    bufferOffset = _serializer.string(obj.first_name, buffer, bufferOffset);
    // Serialize message field [last_name]
    bufferOffset = _serializer.string(obj.last_name, buffer, bufferOffset);
    // Serialize message field [data_int8]
    bufferOffset = _serializer.uint8(obj.data_int8, buffer, bufferOffset);
    // Serialize message field [data_int32]
    bufferOffset = _serializer.uint32(obj.data_int32, buffer, bufferOffset);
    // Serialize message field [data_int16]
    bufferOffset = _serializer.uint16(obj.data_int16, buffer, bufferOffset);
    // Serialize message field [data_float32]
    bufferOffset = _serializer.float32(obj.data_float32, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Num
    let len;
    let data = new Num(null);
    // Deserialize message field [first_name]
    data.first_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_name]
    data.last_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data_int8]
    data.data_int8 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_int32]
    data.data_int32 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data_int16]
    data.data_int16 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [data_float32]
    data.data_float32 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.first_name);
    length += _getByteLength(object.last_name);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4548963ba192530e53c429a3cfe7d8bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string first_name
    string last_name
    uint8 data_int8
    uint32 data_int32
    uint16 data_int16
    float32 data_float32
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Num(null);
    if (msg.first_name !== undefined) {
      resolved.first_name = msg.first_name;
    }
    else {
      resolved.first_name = ''
    }

    if (msg.last_name !== undefined) {
      resolved.last_name = msg.last_name;
    }
    else {
      resolved.last_name = ''
    }

    if (msg.data_int8 !== undefined) {
      resolved.data_int8 = msg.data_int8;
    }
    else {
      resolved.data_int8 = 0
    }

    if (msg.data_int32 !== undefined) {
      resolved.data_int32 = msg.data_int32;
    }
    else {
      resolved.data_int32 = 0
    }

    if (msg.data_int16 !== undefined) {
      resolved.data_int16 = msg.data_int16;
    }
    else {
      resolved.data_int16 = 0
    }

    if (msg.data_float32 !== undefined) {
      resolved.data_float32 = msg.data_float32;
    }
    else {
      resolved.data_float32 = 0.0
    }

    return resolved;
    }
};

module.exports = Num;
