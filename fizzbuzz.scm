(define fizz (lambda () (display "Fizz")))
(define buzz (lambda () (display "Buzz")))
(define fizzbuzz (lambda () (display "Fizzbuzz")))
(define number 
  (lambda(n) (display n))
)

(define pick 
  (lambda (n)
    (cond
      ( (and (zero? (mod n 3)) (zero? (mod n 5))) (fizzbuzz) #t )
      ( (zero? (mod n 3)) (fizz) #t )
      ( (zero? (mod n 5)) (buzz) #t )
      ( else (number n) )
     )
  )
)

(define round 
  (lambda (n max)
    (cond
      ((<= n max) (pick n) (display "\n") (round (+ n 1) max))
    )
  )
)

(round 1 100)