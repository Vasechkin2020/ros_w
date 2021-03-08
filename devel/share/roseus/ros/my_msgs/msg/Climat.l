;; Auto-generated. Do not edit!


(when (boundp 'my_msgs::Climat)
  (if (not (find-package "MY_MSGS"))
    (make-package "MY_MSGS"))
  (shadow 'Climat (find-package "MY_MSGS")))
(unless (find-package "MY_MSGS::CLIMAT")
  (make-package "MY_MSGS::CLIMAT"))

(in-package "ROS")
;;//! \htmlinclude Climat.msg.html


(defclass my_msgs::Climat
  :super ros::object
  :slots (_temperature _pressure _humidity ))

(defmethod my_msgs::Climat
  (:init
   (&key
    ((:temperature __temperature) 0.0)
    ((:pressure __pressure) 0.0)
    ((:humidity __humidity) 0.0)
    )
   (send-super :init)
   (setq _temperature (float __temperature))
   (setq _pressure (float __pressure))
   (setq _humidity (float __humidity))
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:serialization-length
   ()
   (+
    ;; float32 _temperature
    4
    ;; float32 _pressure
    4
    ;; float32 _humidity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure
     (setq _pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _humidity
     (setq _humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_msgs::Climat :md5sum-) "cd31571b3ddb0a3cfe6eb63263527b97")
(setf (get my_msgs::Climat :datatype-) "my_msgs/Climat")
(setf (get my_msgs::Climat :definition-)
      "	float32 temperature
	float32 pressure
	float32 humidity
")



(provide :my_msgs/Climat "cd31571b3ddb0a3cfe6eb63263527b97")


