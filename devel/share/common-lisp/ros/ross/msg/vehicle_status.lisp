; Auto-generated. Do not edit!


(cl:in-package ross-msg)


;//! \htmlinclude vehicle_status.msg.html

(cl:defclass <vehicle_status> (roslisp-msg-protocol:ros-message)
  ((Battery_Status
    :reader Battery_Status
    :initarg :Battery_Status
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (Velocity_Status
    :reader Velocity_Status
    :initarg :Velocity_Status
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (Alt_Status
    :reader Alt_Status
    :initarg :Alt_Status
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (Position_x
    :reader Position_x
    :initarg :Position_x
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (Position_y
    :reader Position_y
    :initarg :Position_y
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass vehicle_status (<vehicle_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vehicle_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vehicle_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ross-msg:<vehicle_status> is deprecated: use ross-msg:vehicle_status instead.")))

(cl:ensure-generic-function 'Battery_Status-val :lambda-list '(m))
(cl:defmethod Battery_Status-val ((m <vehicle_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-msg:Battery_Status-val is deprecated.  Use ross-msg:Battery_Status instead.")
  (Battery_Status m))

(cl:ensure-generic-function 'Velocity_Status-val :lambda-list '(m))
(cl:defmethod Velocity_Status-val ((m <vehicle_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-msg:Velocity_Status-val is deprecated.  Use ross-msg:Velocity_Status instead.")
  (Velocity_Status m))

(cl:ensure-generic-function 'Alt_Status-val :lambda-list '(m))
(cl:defmethod Alt_Status-val ((m <vehicle_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-msg:Alt_Status-val is deprecated.  Use ross-msg:Alt_Status instead.")
  (Alt_Status m))

(cl:ensure-generic-function 'Position_x-val :lambda-list '(m))
(cl:defmethod Position_x-val ((m <vehicle_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-msg:Position_x-val is deprecated.  Use ross-msg:Position_x instead.")
  (Position_x m))

(cl:ensure-generic-function 'Position_y-val :lambda-list '(m))
(cl:defmethod Position_y-val ((m <vehicle_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ross-msg:Position_y-val is deprecated.  Use ross-msg:Position_y instead.")
  (Position_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vehicle_status>) ostream)
  "Serializes a message object of type '<vehicle_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Battery_Status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Velocity_Status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Alt_Status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Position_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Position_y) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vehicle_status>) istream)
  "Deserializes a message object of type '<vehicle_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Battery_Status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Velocity_Status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Alt_Status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Position_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Position_y) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vehicle_status>)))
  "Returns string type for a message object of type '<vehicle_status>"
  "ross/vehicle_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vehicle_status)))
  "Returns string type for a message object of type 'vehicle_status"
  "ross/vehicle_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vehicle_status>)))
  "Returns md5sum for a message object of type '<vehicle_status>"
  "aaafa5c64ffa127d3610f378ae59fa7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vehicle_status)))
  "Returns md5sum for a message object of type 'vehicle_status"
  "aaafa5c64ffa127d3610f378ae59fa7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vehicle_status>)))
  "Returns full string definition for message of type '<vehicle_status>"
  (cl:format cl:nil "std_msgs/String Battery_Status~%std_msgs/String Velocity_Status~%std_msgs/String Alt_Status ~%std_msgs/String Position_x~%std_msgs/String Position_y~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vehicle_status)))
  "Returns full string definition for message of type 'vehicle_status"
  (cl:format cl:nil "std_msgs/String Battery_Status~%std_msgs/String Velocity_Status~%std_msgs/String Alt_Status ~%std_msgs/String Position_x~%std_msgs/String Position_y~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vehicle_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Battery_Status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Velocity_Status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Alt_Status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Position_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Position_y))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vehicle_status>))
  "Converts a ROS message object to a list"
  (cl:list 'vehicle_status
    (cl:cons ':Battery_Status (Battery_Status msg))
    (cl:cons ':Velocity_Status (Velocity_Status msg))
    (cl:cons ':Alt_Status (Alt_Status msg))
    (cl:cons ':Position_x (Position_x msg))
    (cl:cons ':Position_y (Position_y msg))
))
