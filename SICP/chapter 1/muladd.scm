(define (* a b)
(- (multi a b) (if (= (remainder b 2) 1)
                   a
                   0)))
  (define (multi a b)
  (if (= b 1)
      0
      (+ a a (if (= (remainder b 2) 0)
       (multi a (/ b 2)) 
       (+ (multi a (/ (- b 1) 2)) a a)))))
