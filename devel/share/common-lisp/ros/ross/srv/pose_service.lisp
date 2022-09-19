; Auto-generated. Do not edit!


(cl:in-package ross-srv)


;//! \htmlinclude pose_service-request.msg.html

(cl:defclass <pose_service-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass pose_service-request (<pose_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<pose_service-request> is deprecated: use ross-srv:pose_service-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <pose_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:pose-val is deprecated.  Use ross-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_service-request>) ostream)
  "Serializes a message object of type '<pose_service-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_service-request>) istream)
  "Deserializes a message object of type '<pose_service-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_service-request>)))
  "Returns string type for a service object of type '<pose_service-request>"
  "ross/pose_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_service-request)))
  "Returns string type for a service object of type 'pose_service-request"
  "ross/pose_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_service-request>)))
  "Returns md5sum for a message object of type '<pose_service-request>"
  "dfade6cad8d25888383325cca23ea6eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_service-request)))
  "Returns md5sum for a message object of type 'pose_service-request"
  "dfade6cad8d25888383325cca23ea6eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_service-request>)))
  "Returns full string definition for message of type '<pose_service-request>"
  (cl:format cl:nil "geometry_msgs/Point pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_service-request)))
  "Returns full string definition for message of type 'pose_service-request"
  (cl:format cl:nil "geometry_msgs/Point pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_service-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_service-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude pose_service-response.msg.html

(cl:defclass <pose_service-response> (roslisp-msg-protocol:ros-message)
  ((Ack
    :reader Ack
    :initarg :Ack
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_service-response (<pose_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-srv:<pose_service-response> is deprecated: use ross-srv:pose_service-response instead.")))

(cl:ensure-generic-function 'Ack-val :lambda-list '(m))
(cl:defmethod Ack-val ((m <pose_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-srv:Ack-val is deprecated.  Use ross-srv:Ack instead.")
  (Ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_service-response>) ostream)
  "Serializes a message object of type '<pose_service-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ack))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_service-response>) istream)
  "Deserializes a message object of type '<pose_service-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ack) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_service-response>)))
  "Returns string type for a service object of type '<pose_service-response>"
  "ross/pose_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_service-response)))
  "Returns string type for a service object of type 'pose_service-response"
  "ross/pose_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_service-response>)))
  "Returns md5sum for a message object of type '<pose_service-response>"
  "dfade6cad8d25888383325cca23ea6eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_service-response)))
  "Returns md5sum for a message object of type 'pose_service-response"
  "dfade6cad8d25888383325cca23ea6eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_service-response>)))
  "Returns full string definition for message of type '<pose_service-response>"
  (cl:format cl:nil "float32 Ack~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_service-response)))
  "Returns full string definition for message of type 'pose_service-response"
  (cl:format cl:nil "float32 Ack~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_service-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_service-response
    (cl:cons ':Ack (Ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pose_service)))
  'pose_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pose_service)))
  'pose_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_service)))
  "Returns string type for a service object of type '<pose_service>"
  "ross/pose_service")