; main function of harshad
(define (harshad? value)
	(cutable? value (add (trans '() value (expt  10 (count value 0))) 0))
)

; transform a value in a list
(define (trans list value n)
	(if (eqv? n 1)
		(cons value list)
		(trans (cons (quotient value n) list) (modulo value n) (quotient n 10))
	)
)

; add all calues in a list [first call]: (add list 0)
(define (add list sum)
	(if (null? list)
		sum
		(add (cdr list) (+ sum (car list)))
	)
)

; control clear division without rest
(define (cutable? x y)
	(eqv? (modulo x y) 0)
)

; function count the decimal place [first call]: (count value 0)
(define (count value counter) 
	(if (eqv? value 0)
		(- counter 1)
		(count (quotient value 10) (+ counter 1))
	)
)

;;;;;;;;;;;;;;;;;;;;;;NEXT;;;;;;;;;;;;;;;;;;;;

; main function of getharshad
(define (getharshad min max)
	(if (eqv? min max)
		(harshad? min)
		(getharshadRec min max min '())
	)
)

; recursive helpfunction for getharshad
(define (getharshadRec min max cur list)
	(if (eqv? cur (+ max 1))
		list
		(if (harshad? cur)
			(getharshadRec min max (+ cur 1) (cons cur list))
			(getharshadRec min max (+ cur 1) list)
		)
	)
)
