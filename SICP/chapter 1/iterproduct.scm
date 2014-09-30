(define (inc x) (+ x 1))
(define (identity x) x)


(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter  (next a) (term (* a result)))))
  (iter a 1))

(product identity 1 inc 5)
