(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s)
))

(define (caddr s)
  (car (cdr(cdr s))
))

(define (sign x)
(cond
        ((> x 0) '1)
        ((< x 0) '-1)
        (else '0))
)

(define (square x) (* x x))

(define (pow b n)
(cond    ((zero? n) 1)
         ((even? n) (pow (square b) (/ n 2)))
         ((odd? n) (* b (pow b (- n 1)))))
)
(define (ordered? s)
(if (or (null? s) (= (length s) 1))
   'True
(if (> (car s) (car (cdr s)))
   'False
   (ordered? (cdr s))))
)

(define (empty? s) (null? s))

(define (add s v)
(cond ((null? s) (list v))
      ((eq? (car s) v) s)
      ((> (car s) v) (cons v s))
      (< (cons (car s) (add (cdr s) v)))
)
)

; Sets as sorted lists
(define (contains? s v)
(cond ((null? s) 'False)
      ((> (car s) v) 'False)
      ((eq? (car s) v) 'True)
      (else (contains? (cdr s) v))

))

; Equivalent Python code, for your reference:
;
; def empty(s):
;     return s is Link.empty
;
; def contains(s, v):
;     if empty(s):
;         return False
;     elif s.first > v:
;         return False
;     elif s.first == v:
;         return True
;     else:
;         return contains(s.rest, v)

(define (intersect s t)
(cond ((or (null? s) (null? t)) nil)
      ((eq? (car s) (car t)) (cons (car s) (intersect (cdr s) (cdr t))))
      ((< (car s) (car t)) (intersect (cdr s) t))
      (else (intersect s (cdr t)))
))

; Equivalent Python code, for your reference:
;
; def intersect(set1, set2):
;     if empty(set1) or empty(set2):
;         return Link.empty
;     else:
;         e1, e2 = set1.first, set2.first
;         if e1 == e2:
;             return Link(e1, intersect(set1.rest, set2.rest))
;         elif e1 < e2:
;             return intersect(set1.rest, set2)
;         elif e2 < e1:
;             return intersect(set1, set2.rest)

(define (union s t)
(cond   ((null? t) s)
        ((null? s) t)
        ((contains? s (car t)) (union s (cdr t)))
        (else (union (add s (car t)) (cdr t)))
))
