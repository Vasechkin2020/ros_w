; Auto-generated. Do not edit!


(cl:in-package my_msgs-msg)


;//! \htmlinclude Climat.msg.html

(cl:defclass <Climat> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0))
)

(cl:defclass Climat (<Climat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Climat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Climat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs-msg:<Climat> is deprecated: use my_msgs-msg:Climat instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <Climat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:temperature-val is deprecated.  Use my_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <Climat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:pressure-val is deprecated.  Use my_msgs-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <Climat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:humidity-val is deprecated.  Use my_msgs-msg:humidity instead.")
  (humidity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Climat>) ostream)
  "Serializes a message object of type '<Climat>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Climat>) istream)
  "Deserializes a message object of type '<Climat>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humidity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Climat>)))
  "Returns string type for a message object of type '<Climat>"
  "my_msgs/Climat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Climat)))
  "Returns string type for a message object of type 'Climat"
  "my_msgs/Climat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Climat>)))
  "Returns md5sum for a message object of type '<Climat>"
  "cd31571b3ddb0a3cfe6eb63263527b97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Climat)))
  "Returns md5sum for a message object of type 'Climat"
  "cd31571b3ddb0a3cfe6eb63263527b97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Climat>)))
  "Returns full string definition for message of type '<Climat>"
  (cl:format cl:nil "	float32 temperature~%	float32 pressure~%	float32 humidity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Climat)))
  "Returns full string definition for message of type 'Climat"
  (cl:format cl:nil "	float32 temperature~%	float32 pressure~%	float32 humidity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Climat>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Climat>))
  "Converts a ROS message object to a list"
  (cl:list 'Climat
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':humidity (humidity msg))
))
