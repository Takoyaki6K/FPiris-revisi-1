;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Num)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Num (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::NUM")
  (make-package "BEGINNER_TUTORIALS::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass beginner_tutorials::Num
  :super ros::object
  :slots (_first_name _last_name _data_int8 _data_int32 _data_int16 _data_float32 ))

(defmethod beginner_tutorials::Num
  (:init
   (&key
    ((:first_name __first_name) "")
    ((:last_name __last_name) "")
    ((:data_int8 __data_int8) 0)
    ((:data_int32 __data_int32) 0)
    ((:data_int16 __data_int16) 0)
    ((:data_float32 __data_float32) 0.0)
    )
   (send-super :init)
   (setq _first_name (string __first_name))
   (setq _last_name (string __last_name))
   (setq _data_int8 (round __data_int8))
   (setq _data_int32 (round __data_int32))
   (setq _data_int16 (round __data_int16))
   (setq _data_float32 (float __data_float32))
   self)
  (:first_name
   (&optional __first_name)
   (if __first_name (setq _first_name __first_name)) _first_name)
  (:last_name
   (&optional __last_name)
   (if __last_name (setq _last_name __last_name)) _last_name)
  (:data_int8
   (&optional __data_int8)
   (if __data_int8 (setq _data_int8 __data_int8)) _data_int8)
  (:data_int32
   (&optional __data_int32)
   (if __data_int32 (setq _data_int32 __data_int32)) _data_int32)
  (:data_int16
   (&optional __data_int16)
   (if __data_int16 (setq _data_int16 __data_int16)) _data_int16)
  (:data_float32
   (&optional __data_float32)
   (if __data_float32 (setq _data_float32 __data_float32)) _data_float32)
  (:serialization-length
   ()
   (+
    ;; string _first_name
    4 (length _first_name)
    ;; string _last_name
    4 (length _last_name)
    ;; uint8 _data_int8
    1
    ;; uint32 _data_int32
    4
    ;; uint16 _data_int16
    2
    ;; float32 _data_float32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _first_name
       (write-long (length _first_name) s) (princ _first_name s)
     ;; string _last_name
       (write-long (length _last_name) s) (princ _last_name s)
     ;; uint8 _data_int8
       (write-byte _data_int8 s)
     ;; uint32 _data_int32
       (write-long _data_int32 s)
     ;; uint16 _data_int16
       (write-word _data_int16 s)
     ;; float32 _data_float32
       (sys::poke _data_float32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _first_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _first_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _last_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _data_int8
     (setq _data_int8 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _data_int32
     (setq _data_int32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _data_int16
     (setq _data_int16 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _data_float32
     (setq _data_float32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Num :md5sum-) "4548963ba192530e53c429a3cfe7d8bd")
(setf (get beginner_tutorials::Num :datatype-) "beginner_tutorials/Num")
(setf (get beginner_tutorials::Num :definition-)
      "string first_name
string last_name
uint8 data_int8
uint32 data_int32
uint16 data_int16
float32 data_float32

")



(provide :beginner_tutorials/Num "4548963ba192530e53c429a3cfe7d8bd")


