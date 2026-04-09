;;;; trayectoria-academica.lisp

(in-package #:trayectoria-academica)

(defmacro window-component (title &body body)
  "Renderiza múltiples bloques de cl-who en una sola cadena de texto."
  `(with-html-output-to-string (*standard-output* nil :prologue t :indent t)
     (:html :lang "es"
	   (:head
            (:meta :charset "utf-8")
	    (:meta :name "viewport"
		   :content "width=device-width, initial-scale=1")
	    (:link :rel "stylesheet"
		   :type "text/css"
		   :href "https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css")
	    (:link :rel "stylesheet"
		   :type "text/css"
		   :href "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css")
	    (:script :type "text/javascript"
		     :src "https://code.jquery.com/jquery-3.6.0.min.js")
	
	    (:title (str ,title))
	    )
	   (:body
	    ,@body))))



(defmacro render (&body body)
  `(cl-who:with-html-output-to-string (s)
     ,@body))






(defmacro render (&body body)
  "Renderiza múltiples bloques de cl-who en una sola cadena de texto."
  `(with-html-output-to-string (*standard-output* nil :indent t)
     ,@body))


(defun layout-header ()
  (with-html-output (*standard-output* nil)
    (:header :class "px-3 py-2 text-bg-primary border-bottom"
	     (:div :class "container"
		   (:div :class "d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"
			 (:a :class "d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none"
			     (:i :class "bi bi-bootstrap fw-bold fs-5 pe-2"))
			 (:nav
			  (:ul :class "nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small"
			       (:li
				(:a :class "nav-link text-white"
				    (:i :class "bi bi-house fw-bold fs-5 pe-2")
				    "Home")))))))))
(defun layout-sidebar ()
  (with-html-output (*standard-output* nil :indent t)
    (:aside :class "col-8 col-sm-6 col-md-3 col-lg-3 col-xl-2 d-none d-lg-block show"
	    :style "position: fixed; top: 0;bottom: 0;left: 0;border-right: 1px solid var(--bs-border-color-translucent); margin-top:70px; padding: 15px 0 0;z-index: 999; overflow-y: auto;"
	    (:div :class "px-3"
		  (:nav
		   (:ul :class "nav nav-pills flex-column mb-auto"
			(:li :class "nav-item"
			     (:a :class "nav-link active"
				 (:i :class "bi bi-briefcase fw-bold fs-5 pe-2")
				 "Trayectoria"))
			(:li :class "nav-item"
			     (:a :class "nav-link"
				 (:i :class "bi bi-1-circle fw-bold fs-5 pe-2")
				 "Semestre"))
			(:li :class "nav-item"
			     (:a :class "nav-link"
				 (:i :class "bi bi-2-circle fw-bold fs-5 pe-2")
				 "Semestre"))
			(:li :class "nav-item"
			     (:a :class "nav-link"
				 (:i :class "bi bi-3-circle fw-bold fs-5 pe-2")
				 "Semestre"))
			))
		  )
	    )
    
    ))

(defun layout-main ()
  (with-html-output (*standard-output* nil)
    (:main :class "col-lg-9 col-xl-10 offset-lg-3 offset-xl-2"
	   (:div :class "d-flex align-items-center p-3 my-3 text-white rounded shadow-sm"
		 :style "background-color:var(--bs-purple);"
		 
		 (:div :class "hl-1"
		       (:strong "TESVG")
		       (:h1 :class "h6 mb-0 text-white"
			    "Trayectoria académica")
		       
		  )
		 )

	   (:div :class "d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom"
		 (:a :class "d-flex align-items-center link-body-emphasis text-decoration-none"
		     (:i :class "bi bi-person-vcard fw-bold fs-2 pe-3 text-muted ")
		     "Juan Reynoso Elias")
		 (:nav :class "d-inline-flex mt-2 mt-md-0 ms-md-auto"
		       (:a :class "me-3 py-2 link-body-emphasis text-decoration-none"
			   :href "#"
			   "Inglés")
		       (:a :class "me-3 py-2 link-body-emphasis text-decoration-none"
			   :href "#"
			   "Clubs")
		       (:a :class "me-3 py-2 link-body-emphasis text-decoration-none"
			   :href "#"
			   "Psicología")
		       )
		 )
	   
	    
	   
	   (:div :class "d-flex text-body-secondary pt-3"
		 (:p :class "pb-3 mb-0 small lh-sm border-bottom w-100"
		     (:strong :class "d-block  text-gray-dark"
			      "Carrera")
		     "Ingeniería en Sistemas Computacionales"))
	   
	   
	   
	   (:div :class "d-flex text-body-secondary pt-3"
		 (:p :class "pb-3 mb-0 small lh-sm border-bottom w-100"
		     (:strong :class "d-block  text-gray-dark"
			      "Número de control")
		     "123456789"))
	   (:div :class "d-flex text-body-secondary pt-3"
		 (:p :class "pb-3 mb-0 small lh-sm border-bottom w-100"
		     (:strong :class "d-block  text-gray-dark"
			      "Promedio general")
		     "9.5"))
	   
	   (:strong :class "d-block small  text-body-secondary mt-3 py-1"
		    "Créditos avanzados")
	   
	   (:div :class "progress"
		       :role "progressbar"
		       :arial-label "Tayectoria"
		       :aria-valuenow "75"
		       :aria-valuemin "0"
		       :aria-valuemax "100"
		       :style "height: 30px"
		       (:div :class "progress-bar bg-success"
			     :style "width: 75%">
			     "75%")
		       )


	   (:table :class "table mt-5"
		   (:thead
		    (:th :scope "col" "Clave")
		    (:th :scope "col" "Asignatura")
		    (:th :scope "col" "Semestre")
		    (:th :scope "col" "Calificación"))
		   (:tbody
		    (:tr
		     (:td "123")
		     (:td "Cálculo diferencial")
		     (:td "Primer semestre")
		     (:td "95")
		     )
		    (:tr
		     (:td "123")
		     (:td "Programación 1")
		     (:td "Primer semestre")
		     (:td "80")
		     )
		    
		    
		    )
		   )
	   ))
  )


(defun layout ()
  (window-component "Index"
    (layout-header)
    (:div :class "container-fluid"
	  (:div :class "row"
		(layout-sidebar)
		(layout-main)))))





(define-easy-handler (index-handler :uri "/index.html")
    ()
  (layout)
  
  )
