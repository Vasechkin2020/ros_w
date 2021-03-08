;; Auto-generated. Do not edit!


(when (boundp 'my_msgs::Control)
  (if (not (find-package "MY_MSGS"))
    (make-package "MY_MSGS"))
  (shadow 'Control (find-package "MY_MSGS")))
(unless (find-package "MY_MSGS::CONTROL")
  (make-package "MY_MSGS::CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Control.msg.html


(defclass my_msgs::Control
  :super ros::object
  :slots (_speed _radius _napravl _startStop _connect_flag ))

(defmethod my_msgs::Control
  (:init
   (&key
    ((:speed __speed) 0)
    ((:radius __radius) 0)
    ((:napravl __napravl) 0)
    ((:startStop __startStop) 0)
    ((:connect_flag __connect_flag) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _radius (round __radius))
   (setq _napravl (round __napravl))
   (setq _startStop (round __startStop))
   (setq _connect_flag (round __connect_flag))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:napravl
   (&optional __napravl)
   (if __napravl (setq _napravl __napravl)) _napravl)
  (:startStop
   (&optional __startStop)
   (if __startStop (setq _startStop __startStop)) _startStop)
  (:connect_flag
   (&optional __connect_flag)
   (if __connect_flag (setq _connect_flag __connect_flag)) _connect_flag)
  (:serialization-length
   ()
   (+
    ;; uint32 _speed
    4
    ;; uint32 _radius
    4
    ;; uint32 _napravl
    4
    ;; uint32 _startStop
    4
    ;; uint32 _connect_flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _speed
       (write-long _speed s)
     ;; uint32 _radius
       (write-long _radius s)
     ;; uint32 _napravl
       (write-long _napravl s)
     ;; uint32 _startStop
       (write-long _startStop s)
     ;; uint32 _connect_flag
       (write-long _connect_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _napravl
     (setq _napravl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _startStop
     (setq _startStop (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _connect_flag
     (setq _connect_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_msgs::Control :md5sum-) "99987f4c5a18162ec4022640f010b0e4")
(setf (get my_msgs::Control :datatype-) "my_msgs/Control")
(setf (get my_msgs::Control :definition-)
      "# Структура топика с моими данными получаемыми с нижнего уровня Control
#	uint32_t speed;		   // =0..100 положение слайдера
#	uint32_t radius;	   // =0..100 положение слайдера
#	uint32_t napravl;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...
#	uint32_t startStop;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...
#	uint32_t connect_flag; // =1 if wire connected, else =0

    uint32 speed
	uint32 radius
	uint32 napravl
	uint32 startStop
	uint32 connect_flag
")



(provide :my_msgs/Control "99987f4c5a18162ec4022640f010b0e4")


