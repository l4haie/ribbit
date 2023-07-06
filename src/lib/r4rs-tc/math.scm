(##include-once "./bool.scm")
(##include-once "./types.scm")
(##include-once "./number.scm")
(##include-once "./control.scm")

(define (max x . rest) 
  (fold (lambda (best curr) (if (< best curr) curr best)) x rest))

(define (min x . rest) 
  (fold (lambda (best curr) (if (< best curr) best curr)) x rest))

(define (abs x) 
  (if (negative? x) 
    (- x) 
    x))

(define (remainder x y)
  (- x (* y (quotient x y))))

(define (modulo x y)
  (let ((q (quotient x y)))
    (let ((r (- x (* y q))))
      (if (zero? r)
          0
          (if (eqv? (< x 0) (< y 0))
              r
              (+ r y))))))

(define (gcd . args)
  (define (gcd-aux x y)
    (if (zero? x)
      y
      (gcd-aux (remainder y x) x)))

  (fold (lambda (acc curr)
          (let ((ax (abs curr)) (ay (abs acc)))
            (if (< ax ay)
              (gcd-aux ax ay)
              (gcd-aux ay ax))))
        0
        args))


(define (lcm . args)
  (define (lcm-aux acc curr)
    (if (zero? acc)
      0
      (let ((ax (abs curr)) (ay (abs acc)))
        (* (quotient ax (gcd ax ay)) ay))))

  (fold lcm-aux 1 args))


(define (denominator x) 1)

(define (floor x) x)
(define numerator floor)
(define ceiling floor)
(define truncate floor)
(define round floor)
