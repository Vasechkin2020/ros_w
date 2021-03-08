
(cl:in-package :asdf)

(defsystem "my_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Body" :depends-on ("_package_Body"))
    (:file "_package_Body" :depends-on ("_package"))
    (:file "Climat" :depends-on ("_package_Climat"))
    (:file "_package_Climat" :depends-on ("_package"))
    (:file "Control" :depends-on ("_package_Control"))
    (:file "_package_Control" :depends-on ("_package"))
    (:file "HL_to_Body" :depends-on ("_package_HL_to_Body"))
    (:file "_package_HL_to_Body" :depends-on ("_package"))
    (:file "HL_to_Control" :depends-on ("_package_HL_to_Control"))
    (:file "_package_HL_to_Control" :depends-on ("_package"))
    (:file "Xyz" :depends-on ("_package_Xyz"))
    (:file "_package_Xyz" :depends-on ("_package"))
  ))