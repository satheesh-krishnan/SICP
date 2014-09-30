(define (repeated f i)
(lambda (x)
    (define (rep f i)
    (if (= i 1)
     (f x)
     (f (rep f (- i 1)))))
(rep f i)))

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (average x y) (/ (+ x y) 2))


(define (sqrti x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
               1.0))

((repeated sqrti 2) 256)  
