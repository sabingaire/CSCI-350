
; I am using Dr. Racket for this project
;Sabin Gaire
;@02859054
;Structures of Programming language

;Algorithm for question 1:
;First we check for null list, if its null we return as it is
;otherwise we need to add head to the tail of cdr

;Question1 Code

(define (reverse-general L)
        (cond
        ((null? L) L);Check if the list is empty
        ((list? (car L)) (append (reverse-general (cdr L)) (cons (reverse-general (car L)) '())));
         (else (append (reverse-general (cdr L)) (list(car L))));Adding head on the tail of list
         )
  )





