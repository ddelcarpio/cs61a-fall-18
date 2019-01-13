(define (accumulate combiner start n term)
  (if (= n 0)
      start
      (combiner (term n) (accumulate combiner start (- n 1) term)))
)

(define (accumulate-tail combiner start n term)
(if (= n 0)
    start
    (combiner (term n) (accumulate-tail combiner start (- n 1) term)))
)

(define (partial-sums stream))
  (cons partial-sums cdr (stream))

(define (rle s)
(rle (cdr s))
)
