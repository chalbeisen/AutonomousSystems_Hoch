// Auto-generated. Do not edit!

// (in-package turtlesim_halbeisen.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let turtlesim = _finder('turtlesim');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TurtlesimState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.color = null;
      this.twist = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new turtlesim.msg.Pose();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new turtlesim.msg.Color();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtlesimState
    // Serialize message field [pose]
    bufferOffset = turtlesim.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = turtlesim.msg.Color.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtlesimState
    let len;
    let data = new TurtlesimState(null);
    // Deserialize message field [pose]
    data.pose = turtlesim.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = turtlesim.msg.Color.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 71;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlesim_halbeisen/TurtlesimState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c35fa8e2a3f6d67a17abc9bc29d508c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    turtlesim/Pose pose
    turtlesim/Color color
    geometry_msgs/Twist twist
    ================================================================================
    MSG: turtlesim/Pose
    float32 x
    float32 y
    float32 theta
    
    float32 linear_velocity
    float32 angular_velocity
    ================================================================================
    MSG: turtlesim/Color
    uint8 r
    uint8 g
    uint8 b
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtlesimState(null);
    if (msg.pose !== undefined) {
      resolved.pose = turtlesim.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new turtlesim.msg.Pose()
    }

    if (msg.color !== undefined) {
      resolved.color = turtlesim.msg.Color.Resolve(msg.color)
    }
    else {
      resolved.color = new turtlesim.msg.Color()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = TurtlesimState;
