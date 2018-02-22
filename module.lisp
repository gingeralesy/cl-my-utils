(in-package #:cl-user)
(defpackage #:my-utils
  (:use #:cl #:alexandria)
  (:export #:ensure-keyword ;; types.lisp
           #:ensure-string
           #:ensure-char
           #:ensure-integer
           #:ensure-double-float
           #:queue
           #:queue-empty-p
           #:queue-peek
           #:queue-length
           #:queue-append
           #:queue-push
           #:queue-pop
           #:queue-as-list
           #:in-queue))
(in-package #:my-utils)
