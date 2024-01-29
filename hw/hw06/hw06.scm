 (define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)


(define (sign num)
  (if (zero? num)
    0
    (if(> num 0)
      1
      -1
    ))
)


(define (square x) (* x x))

(define (pow x y)
  (cond 
        ((= 0 y) 1)
        ((even? y) (pow (square x) (quotient y 2)))
        (else (* (pow x (- y 1)) x))
  )
)

