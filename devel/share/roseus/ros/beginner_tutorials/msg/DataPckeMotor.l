;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::DataPckeMotor)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'DataPckeMotor (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::DATAPCKEMOTOR")
  (make-package "BEGINNER_TUTORIALS::DATAPCKEMOTOR"))

(in-package "ROS")
;;//! \htmlinclude DataPckeMotor.msg.html


(defclass beginner_tutorials::DataPckeMotor
  :super ros::object
  :slots (_titikX _titikY _target_sudut _kecepatan_x _kecepatan_y _kecepatan_theta ))

(defmethod beginner_tutorials::DataPckeMotor
  (:init
   (&key
    ((:titikX __titikX) 0)
    ((:titikY __titikY) 0)
    ((:target_sudut __target_sudut) 0)
    ((:kecepatan_x __kecepatan_x) 0)
    ((:kecepatan_y __kecepatan_y) 0)
    ((:kecepatan_theta __kecepatan_theta) 0)
    )
   (send-super :init)
   (setq _titikX (round __titikX))
   (setq _titikY (round __titikY))
   (setq _target_sudut (round __target_sudut))
   (setq _kecepatan_x (round __kecepatan_x))
   (setq _kecepatan_y (round __kecepatan_y))
   (setq _kecepatan_theta (round __kecepatan_theta))
   self)
  (:titikX
   (&optional __titikX)
   (if __titikX (setq _titikX __titikX)) _titikX)
  (:titikY
   (&optional __titikY)
   (if __titikY (setq _titikY __titikY)) _titikY)
  (:target_sudut
   (&optional __target_sudut)
   (if __target_sudut (setq _target_sudut __target_sudut)) _target_sudut)
  (:kecepatan_x
   (&optional __kecepatan_x)
   (if __kecepatan_x (setq _kecepatan_x __kecepatan_x)) _kecepatan_x)
  (:kecepatan_y
   (&optional __kecepatan_y)
   (if __kecepatan_y (setq _kecepatan_y __kecepatan_y)) _kecepatan_y)
  (:kecepatan_theta
   (&optional __kecepatan_theta)
   (if __kecepatan_theta (setq _kecepatan_theta __kecepatan_theta)) _kecepatan_theta)
  (:serialization-length
   ()
   (+
    ;; int16 _titikX
    2
    ;; int16 _titikY
    2
    ;; int16 _target_sudut
    2
    ;; int16 _kecepatan_x
    2
    ;; int16 _kecepatan_y
    2
    ;; int16 _kecepatan_theta
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _titikX
       (write-word _titikX s)
     ;; int16 _titikY
       (write-word _titikY s)
     ;; int16 _target_sudut
       (write-word _target_sudut s)
     ;; int16 _kecepatan_x
       (write-word _kecepatan_x s)
     ;; int16 _kecepatan_y
       (write-word _kecepatan_y s)
     ;; int16 _kecepatan_theta
       (write-word _kecepatan_theta s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _titikX
     (setq _titikX (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _titikY
     (setq _titikY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_sudut
     (setq _target_sudut (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kecepatan_x
     (setq _kecepatan_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kecepatan_y
     (setq _kecepatan_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kecepatan_theta
     (setq _kecepatan_theta (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get beginner_tutorials::DataPckeMotor :md5sum-) "cefda5650f612b3eb74c90eb8fd012ef")
(setf (get beginner_tutorials::DataPckeMotor :datatype-) "beginner_tutorials/DataPckeMotor")
(setf (get beginner_tutorials::DataPckeMotor :definition-)
      "int16 titikX
int16 titikY
int16 target_sudut
int16 kecepatan_x
int16 kecepatan_y
int16 kecepatan_theta

")



(provide :beginner_tutorials/DataPckeMotor "cefda5650f612b3eb74c90eb8fd012ef")


