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
                                       (:link :rel "stylesheet"
                                              :type "text/css"
                                              :href "/css/style.css")
                                       (:script :type "text/javascript"
                                                :src "https://code.jquery.com/jquery-3.6.0.min.js")
                                       (:script :type "text/javascript"
                                                :src "/js/script.js")

                                       (:title (str ,title)))
                                      (:body :class "bg-light"
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
                    (:header :class "px-3 py-2 text-bg-primary border-bottom border-primary sticky-top"
                             (:div :class "container"
                                   (:div :class "d-flex flex-wrap align-items-center justify-content-end"
					 (:a :class "text-white text-decoration-none me-3 d-md-none"
					     :id "aside-menu-list"
					     :href "javascript:void(0);"
					     (:i :class "bi bi-list fw-bold fs-3 pe-2"))

                                         (:form :class "w-50 me-2"
                                                (:input :placeholder "Buscar"
                                                        :class "form-control border-primary "
                                                        :type "search"))
                                         (:nav
                                          (:ul :class "nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small"
                                               (:li
                                                (:a :class "nav-link text-white"
                                                    :href "#"
                                                    (:i :class "bi bi-box-arrow-in-left fw-bold fs-5 pe-2")
                                                    "Salir")))))))))
(defun layout-sidebar ()
  (with-html-output (*standard-output* nil :indent t)
                    (:aside :class "col-8 col-sm-6 col-md-3 col-lg-3 col-xl-2 d-md-block bg-white  collapse border-end sidebar position-fixed overflow-y-auto"
			    :id "aside-menu"

                            (:div :class " pt-3 "
                                  (:nav
                                   (:ul :class "nav nav-pills flex-column mb-auto"
                                        (:li :class "nav-item"
                                             (:a :class "nav-link active"
                                                 :href "/"
                                                 (:i :class "bi bi-briefcase fw-bold fs-5 pe-2")
                                                 "Trayectoria"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-uno.html"
                                                 (:i :class "bi bi-1-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-dos.html"
                                                 (:i :class "bi bi-2-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-tres.html"
                                                 (:i :class "bi bi-3-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-cuatro.html"
                                                 (:i :class "bi bi-4-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-cinco.html"
                                                 (:i :class "bi bi-5-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-seis.html"
                                                 (:i :class "bi bi-6-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-siete.html"
                                                 (:i :class "bi bi-7-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))
                                        (:li :class "nav-item"
                                             (:a :class "nav-link"
                                                 :href "semestre-ocho.html"
                                                 (:i :class "bi bi-8-circle fw-bold fs-5 pe-2")
                                                 "Semestre"))))))))

(defun layout-main ()
  (with-html-output (*standard-output* nil)
                    (:main :class "col-md-9 ms-sm-auto col-lg-10 px-md-4 pt-4"
                           (:div :class "d-flex align-items-center p-3 my-3 text-white rounded shadow-sm"
                                 :style "background-color:var(--bs-purple);"

                                 (:div :class "hl-1"
                                       (:strong "TESVG")
                                       (:h1 :class "h6 mb-0 text-white"
                                            "Trayectoria académica")))

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
                                           "Psicología")))
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
                                       :style "width: 75%" >
                                       "75%"))

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
                                     (:td "95"))
                                    (:tr
                                     (:td "123")
                                     (:td "Programación 1")
                                     (:td "Primer semestre")
                                     (:td "80")))))))


(defun semester-view ()
  (with-html-output (*standard-output* nil)
                    (:main :class "col-md-9 ms-sm-auto col-lg-10 px-md-4 pt-4"
                           (:div :class "d-flex align-items-center p-3 my-3 bg-primary text-white rounded shadow"

                                 (:div :class "hl-1"
                                       (:strong "TESVG")
                                       (:h1 :class "h6 mb-0 text-white"
                                            "Trayectoria académica")))

                           (:div :class "d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom"
                                 (:a :class "d-flex align-items-center text-success fw-bold text-decoration-none"
                                     (:i :class "bi bi-person-vcard text-success fw-bold fs-2 pe-3")
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
                                           "Psicología")))
                           (:div :class "table-responsive"
                                 (:table :class "table table-hover mt-5"
                                         (:thead
                                          (:th :scope "col" "#")
                                          (:th :scope "col" "Asignatura")
                                          (:th :scope "col" "Observaciones")
                                          (:th :scope "col" "Créditos")
                                          (:th :scope "col" "Calificación"))
                                         (:tbody :class "table-group-divider"
                                                 (:tr
                                                  (:td "1")
                                                  (:td "Cálculo diferencial")
                                                  (:td "Ninguna")
                                                  (:td "5")
                                                  (:td "85"))
                                                 (:tr
                                                  (:td "2")
                                                  (:td "Física")
                                                  (:td "Ninguna")
                                                  (:td "5")
                                                  (:td "95"))
                                                 (:tr
                                                  (:td "3")
                                                  (:td "Topicos de Programación")
                                                  (:td :class "text-danger" "REC 2022-2")
                                                  (:td "5")
                                                  (:td "80"))
                                                 (:tr
                                                  (:td "4")
                                                  (:td "Taller de Ética")
                                                  (:td "Ninguna")
                                                  (:td "5")
                                                  (:td "100"))
                                                 (:tr
                                                  (:td "5")
                                                  (:td "Taller de investigación")
                                                  (:td "Ninguna")
                                                  (:td "5")
                                                  (:td "95"))
                                                 (:tr
                                                  (:td "")
                                                  (:td "")
                                                  (:td :class "fw-bold" "Total")
                                                  (:td :class "fw-bold" "25")
                                                  (:td :class "fw-bold" "85"))))))))

(defun semester-finder-view ()
  (with-html-output (*standard-output* nil)
                    (:main :class "col-lg-9 col-xl-10 offset-lg-3 offset-xl-2 pt-3"

                           (:div :class "list-group p-4"
                                 (:a :class "list-group-item list-group-item-action d-flex gap-3 py-3"
                                     :href "semestre-uno.html"
                                     (:i :class "bi bi-person-vcard-fill fw-bold fs-1 pe-2")
                                     (:div :class "d-flex gap-2 w-100 justify-content-between"
                                           (:div
                                            (:h6 :clasa "mb-0"
                                                 "Número de control: 2021123077")
                                            (:p :class "mb-0 opacity-75"
                                                "Nombre: Juan Reynoso Elias"))))
                                 (:a :class "list-group-item list-group-item-action d-flex gap-3 py-3"
                                     :href "semestre-uno.html"
                                     (:i :class "bi bi-person-vcard-fill fw-bold fs-1 pe-2")
                                     (:div :class "d-flex gap-2 w-100 justify-content-between"
                                           (:div
                                            (:h6 :clasa "mb-0"
                                                 "Número de control: 2021123077")
                                            (:p :class "mb-0 opacity-75"
                                                "Nombre: Juan Reynoso Elias"))))
                                 (:a :class "list-group-item list-group-item-action d-flex gap-3 py-3"
                                     :href "semestre-uno.html"
                                     (:i :class "bi bi-person-vcard-fill fw-bold fs-1 pe-2")
                                     (:div :class "d-flex gap-2 w-100 justify-content-between"
                                           (:div
                                            (:h6 :clasa "mb-0"
                                                 "Número de control: 2021123077")
                                            (:p :class "mb-0 opacity-75"
                                                "Nombre: Juan Reynoso Elias"))))
                                 (:a :class "list-group-item list-group-item-action d-flex gap-3 py-3"
                                     :href "semestre-uno.html"
                                     (:i :class "bi bi-person-vcard-fill fw-bold fs-1 pe-2")
                                     (:div :class "d-flex gap-2 w-100 justify-content-between"
                                           (:div
                                            (:h6 :clasa "mb-0"
                                                 "Número de control: 2021123077")
                                            (:p :class "mb-0 opacity-75"
                                                "Nombre: Juan Reynoso Elias"))))))))

(defun semester-view-handler ()
  (window-component "Index"
                    (layout-header)
                    (:div :class "container-fluid"
                          (:div :class "row"
                                (layout-sidebar)
                                (semester-view)))))

(defun semester-finder-view-handler ()
  (window-component "Index"
                    (layout-header)
                    (:div :class "container-fluid"
                          (:div :class "row"
                                (layout-sidebar)

                                (semester-finder-view)))))


(defun layout ()
  (window-component "Index"
                    (layout-header)
                    (:div :class "container-fluid"
                          (:div :class "row"
                                (layout-sidebar)
                                (layout-main)))))

(defun monse-handler ()
  (window-component "Index"
                    (:h1 "Un Saludo para Monse")
                    (:p :class "una-clase"
                        "Aca es un parrafo")))


(push (create-regex-dispatcher "^/$" 'layout) *dispatch-table*)

(define-easy-handler (index-handler :uri "/index.html")
                     ()
                     (layout))

(define-easy-handler (semestre-uno-handler :uri "/semestre-uno.html")
                     ()
                     (semester-view-handler))
(define-easy-handler (semestre-dos-handler :uri "/semestre-dos.html")
                     ()
                     (semester-view-handler))

(define-easy-handler (semestre-tres-handler :uri "/semestre-tres.html")
                     ()
                     (semester-view-handler))
(define-easy-handler (semestre-cuatro-handler :uri "/semestre-cuatro.html")
                     ()
                     (semester-view-handler))
(define-easy-handler (semestre-cinco-handler :uri "/semestre-cinco.html")
                     ()
                     (semester-view-handler))
(define-easy-handler (semestre-seis-handler :uri "/semestre-seis.html")
                     ()
                     (semester-view-handler))

(define-easy-handler (semestre-siete-handler :uri "/semestre-siete.html")
                     ()
                     (semester-view-handler))
(define-easy-handler (semestre-ocho-handler :uri "/semestre-ocho.html")
                     ()
                     (semester-view-handler))
(define-easy-handler (semestre-residencia-handler :uri "/residencia.html")
                     ()
                     (semester-view-handler))

(define-easy-handler (finder-handler :uri "/buscar.html")
                     ()
                     (semester-finder-view-handler))

