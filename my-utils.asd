(in-package #:cl-user)

(asdf:defsystem #:my-utils
  :name "My Utilities"
  :author "Janne Pakarinen <gingeralesy@gmail.org>"
  :version "0.1"
  :licence "GNU Lesser General Public License (version 2.1)"
  :description "Various utilities I might use across different projects."
  :depends-on (:alexandria :for)
  :components ((:file "module")
               (:file "types")
               (:file "queue")))
