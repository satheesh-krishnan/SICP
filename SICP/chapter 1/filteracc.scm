(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (inc x) (+ x 1))
(define (iden x) x)


(define (accumulate combiner null term a next b filt)
    (if (> a b)
        null
        (combiner (if (filt a) 
        (term a)
         null)
         (accumulate combiner null term (next a) next b filt)
        )))


(accumulate + 0 iden 1 inc 5 prime?)

