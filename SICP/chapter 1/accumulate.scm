(define (accumulate combiner null term a next b)
    (if (> a b)
        null
        (combiner (term a) (accumulate combiner null term (next a) next b))))
(define (iden x) x)
(define (inc x) (+ x 1))


(accumulate + 0 iden 1 inc 10)
