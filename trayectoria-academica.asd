;;;; trayectoria-academica.asd

(asdf:defsystem #:trayectoria-academica
  :description "Describe trayectoria-academica here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot #:cl-who #:postmodern)
  :components ((:file "package")
               (:file "web-server")
	       (:file "trayectoria-academica")))
