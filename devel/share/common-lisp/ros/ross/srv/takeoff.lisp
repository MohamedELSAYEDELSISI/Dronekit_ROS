; Auto-generated. Do not edit!


(cl:in-package ross-srv)


;//! \htmlinclude takeoff-request.msg.html

(cl:defclass <takeoff-request> (roslisp-msg-protocol:ros-message)
  ((Height
    :reader Height
    :initarg :Height
    :type cl:float
    :initform 0.0))
)

(cl:defclass takeoff-request (<takeoff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <takeoff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'takeoff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<takeoff-request> is deprecated: use ross-srv:takeoff-request instead.")))

(cl:ensure-generic-function 'Height-val :lambda-list '(m))
(cl:defmethod Height-val ((m <takeoff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:Height-val is deprecated.  Use ross-srv:Height instead.")
  (Height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <takeoff-request>) ostream)
  "Serializes a message object of type '<takeoff-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <takeoff-request>) istream)
  "Deserializes a message object of type '<takeoff-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<takeoff-request>)))
  "Returns string type for a service object of type '<takeoff-request>"
  "ross/takeoffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'takeoff-request)))
  "Returns string type for a service object of type 'takeoff-request"
  "ross/takeoffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<takeoff-request>)))
  "Returns md5sum for a message object of type '<takeoff-request>"
  "ac516dd7f44daec312f7639f631f2f8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'takeoff-request)))
  "Returns md5sum for a message object of type 'takeoff-request"
  "ac516dd7f44daec312f7639f631f2f8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<takeoff-request>)))
  "Returns full string definition for message of type '<takeoff-request>"
  (cl:format cl:nil "float32 Height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'takeoff-request)))
  "Returns full string definition for message of type 'takeoff-request"
  (cl:format cl:nil "float32 Height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <takeoff-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <takeoff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'takeoff-request
    (cl:cons ':Height (Height msg))
))
;//! \htmlinclude takeoff-response.msg.html

(cl:defclass <takeoff-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:float
    :initform 0.0))
)

(cl:defclass takeoff-response (<takeoff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <takeoff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'takeoff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<takeoff-response> is deprecated: use ross-srv:takeoff-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <takeoff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:ok-val is deprecated.  Use ross-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <takeoff-response>) ostream)
  "Serializes a message object of type '<takeoff-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ok))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <takeoff-response>) istream)
  "Deserializes a message object of type '<takeoff-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ok) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<takeoff-response>)))
  "Returns string type for a service object of type '<takeoff-response>"
  "ross/takeoffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'takeoff-response)))
  "Returns string type for a service object of type 'takeoff-response"
  "ross/takeoffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<takeoff-response>)))
  "Returns md5sum for a message object of type '<takeoff-response>"
  "ac516dd7f44daec312f7639f631f2f8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'takeoff-response)))
  "Returns md5sum for a message object of type 'takeoff-response"
  "ac516dd7f44daec312f7639f631f2f8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<takeoff-response>)))
  "Returns full string definition for message of type '<takeoff-response>"
  (cl:format cl:nil "float32 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'takeoff-response)))
  "Returns full string definition for message of type 'takeoff-response"
  (cl:format cl:nil "float32 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <takeoff-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <takeoff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'takeoff-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'takeoff)))
  'takeoff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'takeoff)))
  'takeoff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'takeoff)))
  "Returns string type for a service object of type '<takeoff>"
  "ross/takeoff")