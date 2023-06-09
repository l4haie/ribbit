(##include-once "./bool.scm")
(##include-once "./control.scm")

;; Numbers (R4RS section 6.5).
(set! ##< <)

(set! ##no-args '(0))

(set! ##+ +)
(set! ##* *)
(set! ##- -)

(define (+ . args)
  (fold ##+ 0 args))

(define (* . args)
  (fold ##* 1 args))


(define (- x (y ##no-args))
  (if (eqv? y ##no-args)
    (##- 0 x)
    (##- x y)))

(define (/ x (y ##no-args))
  (if (eqv? y ##no-args)
    (quotient 1 x)
    (quotient x y)))

(define rational? integer?)
(define real? rational?)
(define complex? real?)
(define number? complex?)

(define (exact? obj) #t)
(define (inexact? obj) #f)

(define (= x . rest)
  (scan eqv? x #t rest))

(define (< x . rest) 
  (scan ##< x #t rest))


(define (> x . rest) 
  (scan (lambda (x y) (##< y x)) x #t rest))

(define (<= x . rest)
  (scan (lambda (x y) (not (##< y x))) x #t rest))

(define (>= x . rest) 
  (scan (lambda (x y) (not (##< x y))) x #t rest))

(define (zero? x) (eqv? x 0))
(define (positive? x) (< 0 x))
(define (negative? x) (< x 0))
(define (even? x) (eqv? x (* 2 (quotient x 2))))
(define (odd? x) (not (even? x)))
