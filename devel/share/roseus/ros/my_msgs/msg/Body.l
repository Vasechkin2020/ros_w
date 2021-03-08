;; Auto-generated. Do not edit!


(when (boundp 'my_msgs::Body)
  (if (not (find-package "MY_MSGS"))
    (make-package "MY_MSGS"))
  (shadow 'Body (find-package "MY_MSGS")))
(unless (find-package "MY_MSGS::BODY")
  (make-package "MY_MSGS::BODY"))

(in-package "ROS")
;;//! \htmlinclude Body.msg.html


(defclass my_msgs::Body
  :super ros::object
  :slots (_bno055 _bme280 _radius _speed _odom _napravlen _distance_lazer _distance_uzi ))

(defmethod my_msgs::Body
  (:init
   (&key
    ((:bno055 __bno055) (instance my_msgs::Xyz :init))
    ((:bme280 __bme280) (instance my_msgs::Climat :init))
    ((:radius __radius) 0.0)
    ((:speed __speed) 0.0)
    ((:odom __odom) 0.0)
    ((:napravlen __napravlen) 0)
    ((:distance_lazer __distance_lazer) 0.0)
    ((:distance_uzi __distance_uzi) 0.0)
    )
   (send-super :init)
   (setq _bno055 __bno055)
   (setq _bme280 __bme280)
   (setq _radius (float __radius))
   (setq _speed (float __speed))
   (setq _odom (float __odom))
   (setq _napravlen (round __napravlen))
   (setq _distance_lazer (float __distance_lazer))
   (setq _distance_uzi (float __distance_uzi))
   self)
  (:bno055
   (&rest __bno055)
   (if (keywordp (car __bno055))
       (send* _bno055 __bno055)
     (progn
       (if __bno055 (setq _bno055 (car __bno055)))
       _bno055)))
  (:bme280
   (&rest __bme280)
   (if (keywordp (car __bme280))
       (send* _bme280 __bme280)
     (progn
       (if __bme280 (setq _bme280 (car __bme280)))
       _bme280)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:odom
   (&optional __odom)
   (if __odom (setq _odom __odom)) _odom)
  (:napravlen
   (&optional __napravlen)
   (if __napravlen (setq _napravlen __napravlen)) _napravlen)
  (:distance_lazer
   (&optional __distance_lazer)
   (if __distance_lazer (setq _distance_lazer __distance_lazer)) _distance_lazer)
  (:distance_uzi
   (&optional __distance_uzi)
   (if __distance_uzi (setq _distance_uzi __distance_uzi)) _distance_uzi)
  (:serialization-length
   ()
   (+
    ;; my_msgs/Xyz _bno055
    (send _bno055 :serialization-length)
    ;; my_msgs/Climat _bme280
    (send _bme280 :serialization-length)
    ;; float32 _radius
    4
    ;; float32 _speed
    4
    ;; float32 _odom
    4
    ;; int32 _napravlen
    4
    ;; float32 _distance_lazer
    4
    ;; float32 _distance_uzi
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; my_msgs/Xyz _bno055
       (send _bno055 :serialize s)
     ;; my_msgs/Climat _bme280
       (send _bme280 :serialize s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom
       (sys::poke _odom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _napravlen
       (write-long _napravlen s)
     ;; float32 _distance_lazer
       (sys::poke _distance_lazer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_uzi
       (sys::poke _distance_uzi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; my_msgs/Xyz _bno055
     (send _bno055 :deserialize buf ptr-) (incf ptr- (send _bno055 :serialization-length))
   ;; my_msgs/Climat _bme280
     (send _bme280 :deserialize buf ptr-) (incf ptr- (send _bme280 :serialization-length))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom
     (setq _odom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _napravlen
     (setq _napravlen (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance_lazer
     (setq _distance_lazer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_uzi
     (setq _distance_uzi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_msgs::Body :md5sum-) "eb99abd577c79832a68a95987cf3850e")
(setf (get my_msgs::Body :datatype-) "my_msgs/Body")
(setf (get my_msgs::Body :definition-)
      "# Структура топика с моими данными получаемыми с нижнего уровня Body
#	Struct_XYZ bno055;	   //Данные с датчика BNO055
#	Struct_BMP280 bmp280;  //Данные с датчика BMP280
#	float radius = 0; //Радиус по которому едем
#	float speed = 0;  // Заданная скорость	с которой едет тело
#	float odom = 0;	  //Пройденный телом путь
#	int32_t napravlen = 0; // Напрвление 1 по часовой или -1 против часовой, 0- по прямой
#	uint32_t distance_Lazer = 0;
#	float distance_UZI = 0;

Xyz  bno055
Climat  bme280
float32 radius
float32 speed
float32 odom
int32 napravlen
float32 distance_lazer
float32 distance_uzi

================================================================================
MSG: my_msgs/Xyz
float32 x
float32 y
float32 z
================================================================================
MSG: my_msgs/Climat
	float32 temperature
	float32 pressure
	float32 humidity
")



(provide :my_msgs/Body "eb99abd577c79832a68a95987cf3850e")


