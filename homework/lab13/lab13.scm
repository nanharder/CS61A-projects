; Lab 13: Final Review

; Q3
(define (compose-all funcs)
    (define (composed x funcs)
        (if (null? funcs)
            x
            (composed ((car funcs) x) (cdr funcs)))
    )
    (lambda (x) (composed x funcs))
)