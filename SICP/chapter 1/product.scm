(define (product term a next b)
    (if (> a b)
        1
        (* (term a) (product term (next a) next b))))
(define (iden x) x)
(define (inc x) (+ x 1))

          

