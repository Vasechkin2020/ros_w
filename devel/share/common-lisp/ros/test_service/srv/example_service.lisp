; Auto-generated. Do not edit!


(cl:in-package test_service-srv)


;//! \htmlinclude example_service-request.msg.html

(cl:defclass <example_service-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (h
    :reader h
    :initarg :h
    :type cl:float
    :initform 0.0))
)

(cl:defclass example_service-request (<example_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <example_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'example_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_service-srv:<example_service-request> is deprecated: use test_service-srv:example_service-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <example_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service-srv:a-val is deprecated.  Use test_service-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'h-val :lambda-list '(m))
(cl:defmethod h-val ((m <example_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service-srv:h-val is deprecated.  Use test_service-srv:h instead.")
  (h m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <example_service-request>) ostream)
  "Serializes a message object of type '<example_service-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <example_service-request>) istream)
  "Deserializes a message object of type '<example_service-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<example_service-request>)))
  "Returns string type for a service object of type '<example_service-request>"
  "test_service/example_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'example_service-request)))
  "Returns string type for a service object of type 'example_service-request"
  "test_service/example_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<example_service-request>)))
  "Returns md5sum for a message object of type '<example_service-request>"
  "38f137fdee9dd66103a5094dffd6e0e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'example_service-request)))
  "Returns md5sum for a message object of type 'example_service-request"
  "38f137fdee9dd66103a5094dffd6e0e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<example_service-request>)))
  "Returns full string definition for message of type '<example_service-request>"
  (cl:format cl:nil "float32 a~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'example_service-request)))
  "Returns full string definition for message of type 'example_service-request"
  (cl:format cl:nil "float32 a~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <example_service-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <example_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'example_service-request
    (cl:cons ':a (a msg))
    (cl:cons ':h (h msg))
))
;//! \htmlinclude example_service-response.msg.html

(cl:defclass <example_service-response> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0))
)

(cl:defclass example_service-response (<example_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <example_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'example_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_service-srv:<example_service-response> is deprecated: use test_service-srv:example_service-response instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <example_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service-srv:s-val is deprecated.  Use test_service-srv:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <example_service-response>) ostream)
  "Serializes a message object of type '<example_service-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <example_service-response>) istream)
  "Deserializes a message object of type '<example_service-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<example_service-response>)))
  "Returns string type for a service object of type '<example_service-response>"
  "test_service/example_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'example_service-response)))
  "Returns string type for a service object of type 'example_service-response"
  "test_service/example_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<example_service-response>)))
  "Returns md5sum for a message object of type '<example_service-response>"
  "38f137fdee9dd66103a5094dffd6e0e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'example_service-response)))
  "Returns md5sum for a message object of type 'example_service-response"
  "38f137fdee9dd66103a5094dffd6e0e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<example_service-response>)))
  "Returns full string definition for message of type '<example_service-response>"
  (cl:format cl:nil "float32 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'example_service-response)))
  "Returns full string definition for message of type 'example_service-response"
  (cl:format cl:nil "float32 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <example_service-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <example_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'example_service-response
    (cl:cons ':s (s msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'example_service)))
  'example_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'example_service)))
  'example_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'example_service)))
  "Returns string type for a service object of type '<example_service>"
  "test_service/example_service")