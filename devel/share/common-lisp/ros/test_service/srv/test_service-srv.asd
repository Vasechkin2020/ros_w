
(cl:in-package :asdf)

(defsystem "test_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "example_service" :depends-on ("_package_example_service"))
    (:file "_package_example_service" :depends-on ("_package"))
  ))