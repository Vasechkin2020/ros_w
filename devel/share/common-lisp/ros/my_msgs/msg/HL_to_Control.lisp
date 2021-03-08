; Auto-generated. Do not edit!


(cl:in-package my_msgs-msg)


;//! \htmlinclude HL_to_Control.msg.html

(cl:defclass <HL_to_Control> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HL_to_Control (<HL_to_Control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HL_to_Control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HL_to_Control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs-msg:<HL_to_Control> is deprecated: use my_msgs-msg:HL_to_Control instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HL_to_Control>) ostream)
  "Serializes a message object of type '<HL_to_Control>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HL_to_Control>) istream)
  "Deserializes a message object of type '<HL_to_Control>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HL_to_Control>)))
  "Returns string type for a message object of type '<HL_to_Control>"
  "my_msgs/HL_to_Control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HL_to_Control)))
  "Returns string type for a message object of type 'HL_to_Control"
  "my_msgs/HL_to_Control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HL_to_Control>)))
  "Returns md5sum for a message object of type '<HL_to_Control>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HL_to_Control)))
  "Returns md5sum for a message object of type 'HL_to_Control"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HL_to_Control>)))
  "Returns full string definition for message of type '<HL_to_Control>"
  (cl:format cl:nil "#  Формат топика в который выводим все что верхний уровень посылает в блок Control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HL_to_Control)))
  "Returns full string definition for message of type 'HL_to_Control"
  (cl:format cl:nil "#  Формат топика в который выводим все что верхний уровень посылает в блок Control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HL_to_Control>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HL_to_Control>))
  "Converts a ROS message object to a list"
  (cl:list 'HL_to_Control
))
