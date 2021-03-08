; Auto-generated. Do not edit!


(cl:in-package my_msgs-msg)


;//! \htmlinclude HL_to_Body.msg.html

(cl:defclass <HL_to_Body> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (napravlenie
    :reader napravlenie
    :initarg :napravlenie
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (way
    :reader way
    :initarg :way
    :type cl:float
    :initform 0.0))
)

(cl:defclass HL_to_Body (<HL_to_Body>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HL_to_Body>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HL_to_Body)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs-msg:<HL_to_Body> is deprecated: use my_msgs-msg:HL_to_Body instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:id-val is deprecated.  Use my_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:time-val is deprecated.  Use my_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'napravlenie-val :lambda-list '(m))
(cl:defmethod napravlenie-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:napravlenie-val is deprecated.  Use my_msgs-msg:napravlenie instead.")
  (napravlenie m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:command-val is deprecated.  Use my_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:speed-val is deprecated.  Use my_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:radius-val is deprecated.  Use my_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'way-val :lambda-list '(m))
(cl:defmethod way-val ((m <HL_to_Body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs-msg:way-val is deprecated.  Use my_msgs-msg:way instead.")
  (way m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HL_to_Body>) ostream)
  "Serializes a message object of type '<HL_to_Body>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'napravlenie)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'way))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HL_to_Body>) istream)
  "Deserializes a message object of type '<HL_to_Body>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'napravlenie) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'way) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HL_to_Body>)))
  "Returns string type for a message object of type '<HL_to_Body>"
  "my_msgs/HL_to_Body")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HL_to_Body)))
  "Returns string type for a message object of type 'HL_to_Body"
  "my_msgs/HL_to_Body")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HL_to_Body>)))
  "Returns md5sum for a message object of type '<HL_to_Body>"
  "0bd2918d8c2b4abd6fc00f2e6b7c48a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HL_to_Body)))
  "Returns md5sum for a message object of type 'HL_to_Body"
  "0bd2918d8c2b4abd6fc00f2e6b7c48a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HL_to_Body>)))
  "Returns full string definition for message of type '<HL_to_Body>"
  (cl:format cl:nil "#  Формат топика в который выводим все что верхний уровень посылает в блок Body~%#	uint32_t id = 0; // Номер команды по порядку~%#	uint32_t time = 0; // Время в течении которого нужно двигаться~%#	int32_t napravlenie = 0;~%#	int32_t command = 0; // Команда для выполнения~%#	float speed = 0;	 // Скорость которую нужно установить~%#	float radius = 0;	 // Радиус по которому нужно двигаться~%#	float way = 0;		 // Путь который нужно проехать~%~%	uint32 id~%	uint32 time~%	int32 napravlenie ~%	int32 command ~%	float32 speed ~%	float32 radius ~%	float32 way~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HL_to_Body)))
  "Returns full string definition for message of type 'HL_to_Body"
  (cl:format cl:nil "#  Формат топика в который выводим все что верхний уровень посылает в блок Body~%#	uint32_t id = 0; // Номер команды по порядку~%#	uint32_t time = 0; // Время в течении которого нужно двигаться~%#	int32_t napravlenie = 0;~%#	int32_t command = 0; // Команда для выполнения~%#	float speed = 0;	 // Скорость которую нужно установить~%#	float radius = 0;	 // Радиус по которому нужно двигаться~%#	float way = 0;		 // Путь который нужно проехать~%~%	uint32 id~%	uint32 time~%	int32 napravlenie ~%	int32 command ~%	float32 speed ~%	float32 radius ~%	float32 way~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HL_to_Body>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HL_to_Body>))
  "Converts a ROS message object to a list"
  (cl:list 'HL_to_Body
    (cl:cons ':id (id msg))
    (cl:cons ':time (time msg))
    (cl:cons ':napravlenie (napravlenie msg))
    (cl:cons ':command (command msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':way (way msg))
))
