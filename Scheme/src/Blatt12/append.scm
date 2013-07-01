; main fuction
(define (append! list1 list2)
	(if (null? (cdr list1))
		(set-cdr! list1 list2)
		(append! (cdr list1) list2)
	)
)
