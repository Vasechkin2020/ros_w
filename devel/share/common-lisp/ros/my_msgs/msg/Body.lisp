; Auto-generated. Do not edit!


(cl:in-package my_msgs-msg)


;//! \htmlinclude Body.msg.html

(cl:defclass <Body> (roslisp-msg-protocol:ros-message)
  ((bno055
    :reader bno055
    :initarg :bno055
    :type my_msgs-msg:Xyz
    :initform (cl:make-instance 'my_msgs-msg:Xyz))
   (bme280
    :reader bme280
    :initarg :bme280
    :type my_msgs-msg:Climat
    :initform (cl:make-instance 'my_msgs-msg:Climat))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (odom
    :reader odom
    :initarg :odom
    :type cl:float
    :initform 0.0)
   (napravlen
    :reader napravlen
    :initarg :napravlen
    :type cl:integer
    :initform 0)
   (distance_lazer
    :reader distance_lazer
    :initarg :distance_lazer
    :type cl:float
    :initform 0.0)
   (distance_uzi
    :reader distance_uzi
    :initarg :distance_uzi
    :type cl:float
    :initform 0.0))
)

(cl:defclass Body (<Body>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Body>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Body)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs-msg:<Body> is deprecated: use my_msgs-msg:Body instead.")))

(cl:ensure-generic-function 'bno055-val :lambda-list '(m))
(cl:defmethod bno055-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:bno055-val is deprecated.  Use my_msgs-msg:bno055 instead.")
  (bno055 m))

(cl:ensure-generic-function 'bme280-val :lambda-list '(m))
(cl:defmethod bme280-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:bme280-val is deprecated.  Use my_msgs-msg:bme280 instead.")
  (bme280 m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:radius-val is deprecated.  Use my_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:speed-val is deprecated.  Use my_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'odom-val :lambda-list '(m))
(cl:defmethod odom-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:odom-val is deprecated.  Use my_msgs-msg:odom instead.")
  (odom m))

(cl:ensure-generic-function 'napravlen-val :lambda-list '(m))
(cl:defmethod napravlen-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:napravlen-val is deprecated.  Use my_msgs-msg:napravlen instead.")
  (napravlen m))

(cl:ensure-generic-function 'distance_lazer-val :lambda-list '(m))
(cl:defmethod distance_lazer-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:distance_lazer-val is deprecated.  Use my_msgs-msg:distance_lazer instead.")
  (distance_lazer m))

(cl:ensure-generic-function 'distance_uzi-val :lambda-list '(m))
(cl:defmethod distance_uzi-val ((m <Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:distance_uzi-val is deprecated.  Use my_msgs-msg:distance_uzi instead.")
  (distance_uzi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Body>) ostream)
  "Serializes a message object of type '<Body>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bno055) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bme280) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'napravlen)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_lazer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_uzi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Body>) istream)
  "Deserializes a message object of type '<Body>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bno055) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bme280) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'napravlen) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_lazer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_uzi) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Body>)))
  "Returns string type for a message object of type '<Body>"
  "my_msgs/Body")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Body)))
  "Returns string type for a message object of type 'Body"
  "my_msgs/Body")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Body>)))
  "Returns md5sum for a message object of type '<Body>"
  "eb99abd577c79832a68a95987cf3850e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Body)))
  "Returns md5sum for a message object of type 'Body"
  "eb99abd577c79832a68a95987cf3850e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Body>)))
  "Returns full string definition for message of type '<Body>"
  (cl:format cl:nil "# Структура топика с моими данными получаемыми с нижнего уровня Body~%#	Struct_XYZ bno055;	   //Данные с датчика BNO055~%#	Struct_BMP280 bmp280;  //Данные с датчика BMP280~%#	float radius = 0; //Радиус по которому едем~%#	float speed = 0;  // Заданная скорость	с которой едет тело~%#	float odom = 0;	  //Пройденный телом путь~%#	int32_t napravlen = 0; // Напрвление 1 по часовой или -1 против часовой, 0- по прямой~%#	uint32_t distance_Lazer = 0;~%#	float distance_UZI = 0;~%~%Xyz  bno055~%Climat  bme280~%float32 radius~%float32 speed~%float32 odom~%int32 napravlen~%float32 distance_lazer~%float32 distance_uzi~%~%================================================================================~%MSG: my_msgs/Xyz~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: my_msgs/Climat~%	float32 temperature~%	float32 pressure~%	float32 humidity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Body)))
  "Returns full string definition for message of type 'Body"
  (cl:format cl:nil "# Структура топика с моими данными получаемыми с нижнего уровня Body~%#	Struct_XYZ bno055;	   //Данные с датчика BNO055~%#	Struct_BMP280 bmp280;  //Данные с датчика BMP280~%#	float radius = 0; //Радиус по которому едем~%#	float speed = 0;  // Заданная скорость	с которой едет тело~%#	float odom = 0;	  //Пройденный телом путь~%#	int32_t napravlen = 0; // Напрвление 1 по часовой или -1 против часовой, 0- по прямой~%#	uint32_t distance_Lazer = 0;~%#	float distance_UZI = 0;~%~%Xyz  bno055~%Climat  bme280~%float32 radius~%float32 speed~%float32 odom~%int32 napravlen~%float32 distance_lazer~%float32 distance_uzi~%~%================================================================================~%MSG: my_msgs/Xyz~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: my_msgs/Climat~%	float32 temperature~%	float32 pressure~%	float32 humidity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Body>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bno055))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bme280))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Body>))
  "Converts a ROS message object to a list"
  (cl:list 'Body
    (cl:cons ':bno055 (bno055 msg))
    (cl:cons ':bme280 (bme280 msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':odom (odom msg))
    (cl:cons ':napravlen (napravlen msg))
    (cl:cons ':distance_lazer (distance_lazer msg))
    (cl:cons ':distance_uzi (distance_uzi msg))
))
