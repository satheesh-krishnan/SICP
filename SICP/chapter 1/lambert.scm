(define (tan-cf x k l)
     (display l)
     (newline)
     (if (= l k)
      (* x x)
      (if (= l 1)
      (/ x (tan-cf x k (+ l 1)))
      (- l (/ (* x x) (tan-cf x k (+ l 1)))))))
(tan-cf 3  6 0)



