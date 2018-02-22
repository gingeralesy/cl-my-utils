(in-package #:my-utils)

(defun ensure-keyword (val)
  (typecase val
    (keyword val)
    (symbol (make-keyword val))
    (T (make-keyword (format NIL "~:@(~a~)" val)))))

(defun ensure-string (val)
  (format NIL "~a" val))

(defun ensure-char (val)
  (typecase val
    (character val)
    (T (char (ensure-string val) 0))))

(defun ensure-integer (number)
  (typecase number
    (integer number)
    (number (round number))
    (T (parse-integer (ensure-string number)))))

(defun ensure-double-float (number)
  (etypecase number
    (double-float number)
    (number (coerce number 'double-float))
    (string (coerce (ensure-integer number) 'double-float))))
