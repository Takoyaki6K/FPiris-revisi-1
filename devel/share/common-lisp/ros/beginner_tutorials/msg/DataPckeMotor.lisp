; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude DataPckeMotor.msg.html

(cl:defclass <DataPckeMotor> (roslisp-msg-protocol:ros-message)
  ((titikX
    :reader titikX
    :initarg :titikX
    :type cl:fixnum
    :initform 0)
   (titikY
    :reader titikY
    :initarg :titikY
    :type cl:fixnum
    :initform 0)
   (target_sudut
    :reader target_sudut
    :initarg :target_sudut
    :type cl:fixnum
    :initform 0)
   (kecepatan_x
    :reader kecepatan_x
    :initarg :kecepatan_x
    :type cl:fixnum
    :initform 0)
   (kecepatan_y
    :reader kecepatan_y
    :initarg :kecepatan_y
    :type cl:fixnum
    :initform 0)
   (kecepatan_theta
    :reader kecepatan_theta
    :initarg :kecepatan_theta
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DataPckeMotor (<DataPckeMotor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataPckeMotor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataPckeMotor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<DataPckeMotor> is deprecated: use beginner_tutorials-msg:DataPckeMotor instead.")))

(cl:ensure-generic-function 'titikX-val :lambda-list '(m))
(cl:defmethod titikX-val ((m <DataPckeMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:titikX-val is deprecated.  Use beginner_tutorials-msg:titikX instead.")
  (titikX m))

(cl:ensure-generic-function 'titikY-val :lambda-list '(m))
(cl:defmethod titikY-val ((m <DataPckeMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:titikY-val is deprecated.  Use beginner_tutorials-msg:titikY instead.")
  (titikY m))

(cl:ensure-generic-function 'target_sudut-val :lambda-list '(m))
(cl:defmethod target_sudut-val ((m <DataPckeMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:target_sudut-val is deprecated.  Use beginner_tutorials-msg:target_sudut instead.")
  (target_sudut m))

(cl:ensure-generic-function 'kecepatan_x-val :lambda-list '(m))
(cl:defmethod kecepatan_x-val ((m <DataPckeMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:kecepatan_x-val is deprecated.  Use beginner_tutorials-msg:kecepatan_x instead.")
  (kecepatan_x m))

(cl:ensure-generic-function 'kecepatan_y-val :lambda-list '(m))
(cl:defmethod kecepatan_y-val ((m <DataPckeMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:kecepatan_y-val is deprecated.  Use beginner_tutorials-msg:kecepatan_y instead.")
  (kecepatan_y m))

(cl:ensure-generic-function 'kecepatan_theta-val :lambda-list '(m))
(cl:defmethod kecepatan_theta-val ((m <DataPckeMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:kecepatan_theta-val is deprecated.  Use beginner_tutorials-msg:kecepatan_theta instead.")
  (kecepatan_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataPckeMotor>) ostream)
  "Serializes a message object of type '<DataPckeMotor>"
  (cl:let* ((signed (cl:slot-value msg 'titikX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'titikY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_sudut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kecepatan_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kecepatan_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kecepatan_theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataPckeMotor>) istream)
  "Deserializes a message object of type '<DataPckeMotor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'titikX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'titikY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_sudut) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kecepatan_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kecepatan_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kecepatan_theta) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataPckeMotor>)))
  "Returns string type for a message object of type '<DataPckeMotor>"
  "beginner_tutorials/DataPckeMotor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataPckeMotor)))
  "Returns string type for a message object of type 'DataPckeMotor"
  "beginner_tutorials/DataPckeMotor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataPckeMotor>)))
  "Returns md5sum for a message object of type '<DataPckeMotor>"
  "cefda5650f612b3eb74c90eb8fd012ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataPckeMotor)))
  "Returns md5sum for a message object of type 'DataPckeMotor"
  "cefda5650f612b3eb74c90eb8fd012ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataPckeMotor>)))
  "Returns full string definition for message of type '<DataPckeMotor>"
  (cl:format cl:nil "int16 titikX~%int16 titikY~%int16 target_sudut~%int16 kecepatan_x~%int16 kecepatan_y~%int16 kecepatan_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataPckeMotor)))
  "Returns full string definition for message of type 'DataPckeMotor"
  (cl:format cl:nil "int16 titikX~%int16 titikY~%int16 target_sudut~%int16 kecepatan_x~%int16 kecepatan_y~%int16 kecepatan_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataPckeMotor>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataPckeMotor>))
  "Converts a ROS message object to a list"
  (cl:list 'DataPckeMotor
    (cl:cons ':titikX (titikX msg))
    (cl:cons ':titikY (titikY msg))
    (cl:cons ':target_sudut (target_sudut msg))
    (cl:cons ':kecepatan_x (kecepatan_x msg))
    (cl:cons ':kecepatan_y (kecepatan_y msg))
    (cl:cons ':kecepatan_theta (kecepatan_theta msg))
))
