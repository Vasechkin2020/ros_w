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

class HL_to_Body {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.time = null;
      this.napravlenie = null;
      this.command = null;
      this.speed = null;
      this.radius = null;
      this.way = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('napravlenie')) {
        this.napravlenie = initObj.napravlenie
      }
      else {
        this.napravlenie = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('way')) {
        this.way = initObj.way
      }
      else {
        this.way = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HL_to_Body
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.uint32(obj.time, buffer, bufferOffset);
    // Serialize message field [napravlenie]
    bufferOffset = _serializer.int32(obj.napravlenie, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.int32(obj.command, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [way]
    bufferOffset = _serializer.float32(obj.way, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HL_to_Body
    let len;
    let data = new HL_to_Body(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [napravlenie]
    data.napravlenie = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [way]
    data.way = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msgs/HL_to_Body';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bd2918d8c2b4abd6fc00f2e6b7c48a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  Формат топика в который выводим все что верхний уровень посылает в блок Body
    #	uint32_t id = 0; // Номер команды по порядку
    #	uint32_t time = 0; // Время в течении которого нужно двигаться
    #	int32_t napravlenie = 0;
    #	int32_t command = 0; // Команда для выполнения
    #	float speed = 0;	 // Скорость которую нужно установить
    #	float radius = 0;	 // Радиус по которому нужно двигаться
    #	float way = 0;		 // Путь который нужно проехать
    
    	uint32 id
    	uint32 time
    	int32 napravlenie 
    	int32 command 
    	float32 speed 
    	float32 radius 
    	float32 way
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HL_to_Body(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.napravlenie !== undefined) {
      resolved.napravlenie = msg.napravlenie;
    }
    else {
      resolved.napravlenie = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.way !== undefined) {
      resolved.way = msg.way;
    }
    else {
      resolved.way = 0.0
    }

    return resolved;
    }
};

module.exports = HL_to_Body;
