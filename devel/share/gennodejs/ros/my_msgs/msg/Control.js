// Auto-generated. Do not edit!

// (in-package my_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.radius = null;
      this.napravl = null;
      this.startStop = null;
      this.connect_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0;
      }
      if (initObj.hasOwnProperty('napravl')) {
        this.napravl = initObj.napravl
      }
      else {
        this.napravl = 0;
      }
      if (initObj.hasOwnProperty('startStop')) {
        this.startStop = initObj.startStop
      }
      else {
        this.startStop = 0;
      }
      if (initObj.hasOwnProperty('connect_flag')) {
        this.connect_flag = initObj.connect_flag
      }
      else {
        this.connect_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Control
    // Serialize message field [speed]
    bufferOffset = _serializer.uint32(obj.speed, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.uint32(obj.radius, buffer, bufferOffset);
    // Serialize message field [napravl]
    bufferOffset = _serializer.uint32(obj.napravl, buffer, bufferOffset);
    // Serialize message field [startStop]
    bufferOffset = _serializer.uint32(obj.startStop, buffer, bufferOffset);
    // Serialize message field [connect_flag]
    bufferOffset = _serializer.uint32(obj.connect_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Control
    let len;
    let data = new Control(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [napravl]
    data.napravl = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [startStop]
    data.startStop = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [connect_flag]
    data.connect_flag = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msgs/Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99987f4c5a18162ec4022640f010b0e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Структура топика с моими данными получаемыми с нижнего уровня Control
    #	uint32_t speed;		   // =0..100 положение слайдера
    #	uint32_t radius;	   // =0..100 положение слайдера
    #	uint32_t napravl;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...
    #	uint32_t startStop;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...
    #	uint32_t connect_flag; // =1 if wire connected, else =0
    
        uint32 speed
    	uint32 radius
    	uint32 napravl
    	uint32 startStop
    	uint32 connect_flag
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Control(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0
    }

    if (msg.napravl !== undefined) {
      resolved.napravl = msg.napravl;
    }
    else {
      resolved.napravl = 0
    }

    if (msg.startStop !== undefined) {
      resolved.startStop = msg.startStop;
    }
    else {
      resolved.startStop = 0
    }

    if (msg.connect_flag !== undefined) {
      resolved.connect_flag = msg.connect_flag;
    }
    else {
      resolved.connect_flag = 0
    }

    return resolved;
    }
};

module.exports = Control;
