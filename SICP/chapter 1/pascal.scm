(define (pascal n p c)
(display p) (newline)
(if (< c (- n 1))
(pascal n (* p 11) (+ c 1))))


