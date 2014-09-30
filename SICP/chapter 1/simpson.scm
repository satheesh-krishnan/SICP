(define (cube x) (* x x x))
(define (inc a) (+ a 1))

(define (sum term a next b)
(if (> a b)
0
(+ (term a) (sum term (next a) next b))))

(define (simpson f a b n)
(define h (/ (- b a) n))
(define (funt k)
(cond ((= k 0) (f (+ a (* k h)))) 
      ((= k n) (f (+ a (* k h))))
      ((= (remainder k 2) 1) (* 4 (f (+ a (* k h)))))
      (else (* 2 (f (+ a (* k h)))))))
(* (/ h 3) (sum funt 0 inc n))) 
