(in-package #:trayectoria-academica)

(defparameter *server* nil)

(defvar *wwwroot*  (concatenate 'string
				(namestring (asdf:component-pathname
					     (asdf:find-system :trayectoria-academica)))
				"wwwroot"))

(defun start-web-server (&key (port 9090))
  "Start the web server"
  (setf *server* (start (make-instance 'easy-acceptor :port port))))

(defun stop-web-server ()
  "Stop the web server"
  (stop *server*))

(defun restart-web-server ()
  "Restart the web server"
  (stop-web-server)
  (start-web-server))
