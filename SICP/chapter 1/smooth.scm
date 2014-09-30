(define (repeated f i)
(lambda (x)
    (define (rep f i)
    (if (= i 1)
     (f x)
     (f (rep f (- i 1)))))
(rep f i)))


(define (inc x) (* x x))

(define (smooth f dx)
(lambda (x) 
(/ (+ (f (- x dx)) (f x) (+ x dx)) 3)))




((repeated (smooth inc 0.0001) 2) 3)
