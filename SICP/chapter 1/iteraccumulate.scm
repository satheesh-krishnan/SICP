(define (accum combiner null term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter  (next a) (term (combiner a result)))))
  (iter a null))


(define (inc x) (+ x 1))
(define (iden x) x)
