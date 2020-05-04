(define-record-type <box>
  (make-box v*)
  box?
  (v* unbox* set-box*!))

(define (box . v*)
  (make-box v*))

(define (unbox b)
  (apply values (unbox* b)))

(define (set-box! b . v*)
  (set-box*! b v*))
