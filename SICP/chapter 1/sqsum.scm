(define (sq a b c)
(cond ((> a b)
      (if (> b c)
        (* (* a a)(* b b))
        (* (* a a)(* c c))))
      (else (if (> a c)
         (* (* a a)(* b b))
         (* (* c c)(* b b))))))     
      
       
(sq 3 2 5)
         
  
      
