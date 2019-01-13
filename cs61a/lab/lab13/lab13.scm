; Lab 13: Final Review

; Q3
(define (compose-all funcs)
  (lambda (y)
    (if (null? funcs)
        y
        ((compose-all (cdr funcs)) ((car funcs) x))))
)
