;;;; package.lisp

(defpackage #:trayectoria-academica
  (:use #:cl
	#:hunchentoot
	#:cl-who
	#:postmodern))


(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf (cl-who:html-mode) :html5))
