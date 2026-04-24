(in-package #:trayectoria-academica)

(defparameter *server* nil)

(defvar *wwwroot*  (concatenate 'string
				(namestring (asdf:component-pathname
					     (asdf:find-system :trayectoria-academica)))
				"wwwroot")
   "The document root of the web App")



;; Dispatcher for images
(push (create-folder-dispatcher-and-handler "/img/"
					    (concatenate 'string *wwwroot*
							 "/img/"))
      *dispatch-table*)

;; Dispatcher for stylesheets
(push (create-folder-dispatcher-and-handler "/css/"
					    (concatenate 'string *wwwroot*
							 "/css/"))
      *dispatch-table*)

;; Dispatcher for javascript files
(push (create-folder-dispatcher-and-handler "/js/"
					    (concatenate 'string *wwwroot*
							 "/js/"))
      *dispatch-table*)

;; Dispatcher for javascript files
(push (create-folder-dispatcher-and-handler "/fonts/"
					    (concatenate 'string *wwwroot*
							 "/fonts/"))
      *dispatch-table*)


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
