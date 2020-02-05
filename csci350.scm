
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

;Algorithm for question 2:
;This function takes L as an argument
;We need to sum the numbers
;It returns the sum of the numbers not nested
;It checks the list and keep on summing the numbers

;Question 2 Code

(define (sum-up-numbers-simple L)
        (cond
        ((null? L) 0)
        ((list? (car L)) (sum-up-numbers-simple (cdr L)))
        ((number? (car L)) (+(car L) (sum-up-numbers-simple (cdr L))))
        (else (sum-up-numbers-simple (cdr L)))
        )
  )

;Algorithm for question 3:
;This function takes L as an argument
;This time the nested numbers will be added as sum
;The function will use recurrsion and add function and head, ignore non -integer atom
;Only difference is that we add the number in listed loop when we find its sum as well


;Question 3 Code

(define (sum-up-numbers-general L)
        (cond
         ((null? L) 0)
         ((list? (car L))(+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
         ((number? (car L)) (+(car L) (sum-up-numbers-general (cdr L))))
         (else (sum-up-numbers-general (cdr L)))
         )
  )

;Question 4 algorithm
;I will have helper functions which will help find the required min above min value


(define (min-above-min L1 L2)
  (cond
    ((null? L1) #f);This will return null if L1 is empty
    ((null? L2) (min-value L1));;I will call helper function to find the minimum value if L2 is null
    (#t (larger-number L1 (min-value L2)))
    )
  )


;Now the function min value will take in a list and find the minimum number from the list
;If the list is empty it will return false
;Goes recurssively as it will return a minimum value
;Helper function:

(define (min-value L)
  (cond
    ((null? L) #f);it will return false if the list is empty




