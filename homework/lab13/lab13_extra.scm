; Lab 13: Final Review - Optional Questions

; Q6
(define (nodots s)
    (cond 
        ((not (Pair? s)) s)
        ((null? (cdr s)) (cons (nodots (car s)) nil))
        ((Pair? (cdr s)) (cons (nodots (car s)) (nodots (cdr s))))
        (else (cons (nodots (car s)) (cons (cdr s) ())))
    )
)


; Q7
(define (has-cycle? s)
  (define (pair-tracker seen-so-far curr)
    (cond ((null? curr) #f)
          ((contains? seen-so-far curr) #t)
          (else (pair-tracker (cons curr seen-so-far) (cdr-stream curr))))
    )
  (pair-tracker () s)
)

(define (contains? lst s)
    (cond 
        ((null? lst) #f)
        ((eq? (car lst) s) #t)
        (else (contains? (cdr lst) s))
    )
)

; Q8
(define-macro (switch expr cases)
    `(if (eq? ',(car (car cases)) ,expr)
         ,(car (cdr (car cases)))
         (switch ,expr ,(cdr cases))
    )
)