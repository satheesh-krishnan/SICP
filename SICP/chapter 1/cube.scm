(define (cube-iter guess x)
(if (good guess x)
    guess
    (cube-iter (improve guess x) x)))
(define (good guess x)
(< (abs (- (* (square guess) guess) x)) 0.001))

(define (improve guess x)

(/ (+ (/ x (square guess)) (* 2 guess)) 3))



(define (cube x)
(cube-iter 1.0 x))


(cube 27)
