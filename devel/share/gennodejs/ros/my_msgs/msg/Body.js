// Auto-generated. Do not edit!

// (in-package my_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Xyz = require('./Xyz.js');
let Climat = require('./Climat.js');

//-----------------------------------------------------------

class Body {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bno055 = null;
      this.bme280 = null;
      this.radius = null;
      this.speed = null;
      this.odom = null;
      this.napravlen = null;
      this.distance_lazer = null;
      this.distance_uzi = null;
    }
    else {
      if (initObj.hasOwnProperty('bno055')) {
        this.bno055 = initObj.bno055
      }
      else {
        this.bno055 = new Xyz();
      }
      if (initObj.hasOwnProperty('bme280')) {
        this.bme280 = initObj.bme280
      }
      else {
        this.bme280 = new Climat();
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('odom')) {
        this.odom = initObj.odom
      }
      else {
        this.odom = 0.0;
      }
      if (initObj.hasOwnProperty('napravlen')) {
        this.napravlen = initObj.napravlen
      }
      else {
        this.napravlen = 0;
      }
      if (initObj.hasOwnProperty('distance_lazer')) {
        this.distance_lazer = initObj.distance_lazer
      }
      else {
        this.distance_lazer = 0.0;
      }
      if (initObj.hasOwnProperty('distance_uzi')) {
        this.distance_uzi = initObj.distance_uzi
      }
      else {
        this.distance_uzi = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Body
    // Serialize message field [bno055]
    bufferOffset = Xyz.serialize(obj.bno055, buffer, bufferOffset);
    // Serialize message field [bme280]
    bufferOffset = Climat.serialize(obj.bme280, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [odom]
    bufferOffset = _serializer.float32(obj.odom, buffer, bufferOffset);
    // Serialize message field [napravlen]
    bufferOffset = _serializer.int32(obj.napravlen, buffer, bufferOffset);
    // Serialize message field [distance_lazer]
    bufferOffset = _serializer.float32(obj.distance_lazer, buffer, bufferOffset);
    // Serialize message field [distance_uzi]
    bufferOffset = _serializer.float32(obj.distance_uzi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Body
    let len;
    let data = new Body(null);
    // Deserialize message field [bno055]
    data.bno055 = Xyz.deserialize(buffer, bufferOffset);
    // Deserialize message field [bme280]
    data.bme280 = Climat.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom]
    data.odom = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [napravlen]
    data.napravlen = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_lazer]
    data.distance_lazer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_uzi]
    data.distance_uzi = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msgs/Body';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb99abd577c79832a68a95987cf3850e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Структура топика с моими данными получаемыми с нижнего уровня Body
    #	Struct_XYZ bno055;	   //Данные с датчика BNO055
    #	Struct_BMP280 bmp280;  //Данные с датчика BMP280
    #	float radius = 0; //Радиус по которому едем
    #	float speed = 0;  // Заданная скорость	с которой едет тело
    #	float odom = 0;	  //Пройденный телом путь
    #	int32_t napravlen = 0; // Напрвление 1 по часовой или -1 против часовой, 0- по прямой
    #	uint32_t distance_Lazer = 0;
    #	float distance_UZI = 0;
    
    Xyz  bno055
    Climat  bme280
    float32 radius
    float32 speed
    float32 odom
    int32 napravlen
    float32 distance_lazer
    float32 distance_uzi
    
    ================================================================================
    MSG: my_msgs/Xyz
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: my_msgs/Climat
    	float32 temperature
    	float32 pressure
    	float32 humidity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Body(null);
    if (msg.bno055 !== undefined) {
      resolved.bno055 = Xyz.Resolve(msg.bno055)
    }
    else {
      resolved.bno055 = new Xyz()
    }

    if (msg.bme280 !== undefined) {
      resolved.bme280 = Climat.Resolve(msg.bme280)
    }
    else {
      resolved.bme280 = new Climat()
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.odom !== undefined) {
      resolved.odom = msg.odom;
    }
    else {
      resolved.odom = 0.0
    }

    if (msg.napravlen !== undefined) {
      resolved.napravlen = msg.napravlen;
    }
    else {
      resolved.napravlen = 0
    }

    if (msg.distance_lazer !== undefined) {
      resolved.distance_lazer = msg.distance_lazer;
    }
    else {
      resolved.distance_lazer = 0.0
    }

    if (msg.distance_uzi !== undefined) {
      resolved.distance_uzi = msg.distance_uzi;
    }
    else {
      resolved.distance_uzi = 0.0
    }

    return resolved;
    }
};

module.exports = Body;
