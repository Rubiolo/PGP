; main fuction
(define (append! a b)
	(if (null? (cdr a))
		(set-cdr! a b)
		(append! (cdr a) b)
	)
)
