;; Auto-generated. Do not edit!


(when (boundp 'test_service::example_service)
  (if (not (find-package "TEST_SERVICE"))
    (make-package "TEST_SERVICE"))
  (shadow 'example_service (find-package "TEST_SERVICE")))
(unless (find-package "TEST_SERVICE::EXAMPLE_SERVICE")
  (make-package "TEST_SERVICE::EXAMPLE_SERVICE"))
(unless (find-package "TEST_SERVICE::EXAMPLE_SERVICEREQUEST")
  (make-package "TEST_SERVICE::EXAMPLE_SERVICEREQUEST"))
(unless (find-package "TEST_SERVICE::EXAMPLE_SERVICERESPONSE")
  (make-package "TEST_SERVICE::EXAMPLE_SERVICERESPONSE"))

(in-package "ROS")





(defclass test_service::example_serviceRequest
  :super ros::object
  :slots (_a _h ))

(defmethod test_service::example_serviceRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _h (float __h))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_service::example_serviceResponse
  :super ros::object
  :slots (_s ))

(defmethod test_service::example_serviceResponse
  (:init
   (&key
    ((:s __s) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; float32 _s
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_service::example_service
  :super ros::object
  :slots ())

(setf (get test_service::example_service :md5sum-) "38f137fdee9dd66103a5094dffd6e0e8")
(setf (get test_service::example_service :datatype-) "test_service/example_service")
(setf (get test_service::example_service :request) test_service::example_serviceRequest)
(setf (get test_service::example_service :response) test_service::example_serviceResponse)

(defmethod test_service::example_serviceRequest
  (:response () (instance test_service::example_serviceResponse :init)))

(setf (get test_service::example_serviceRequest :md5sum-) "38f137fdee9dd66103a5094dffd6e0e8")
(setf (get test_service::example_serviceRequest :datatype-) "test_service/example_serviceRequest")
(setf (get test_service::example_serviceRequest :definition-)
      "float32 a
float32 h
---
float32 s
")

(setf (get test_service::example_serviceResponse :md5sum-) "38f137fdee9dd66103a5094dffd6e0e8")
(setf (get test_service::example_serviceResponse :datatype-) "test_service/example_serviceResponse")
(setf (get test_service::example_serviceResponse :definition-)
      "float32 a
float32 h
---
float32 s
")



(provide :test_service/example_service "38f137fdee9dd66103a5094dffd6e0e8")


