; a)
(define ((consElem2All x) liste)
	(map ((curry cons) x) liste)
)

; RESULTS :
; > ((consElem2All 'b) '((1) (2 3) (4)))
; '((b 1) (b 2 3) (b 4))
; > ((consElem2All 'b) '(1 2 4))
; '((b . 1) (b . 2) (b . 4))

; b)
(define ((check4Members elems) liste)
	(if (null? elems)
		'()
		(help '() elems liste)
	)
)

; helpfuntion
(define (help result rest liste)
	(if (null? rest)
		result
		(help (append result (list(cons ((curry intern?) (car rest) liste) (list(car rest))))) (cdr rest) liste)
	)
)

; checked is a value in a list
(define (intern? x liste)
	(if (null? liste)
		#f
		(if (equal? x (car liste))
			#t
			(intern? x (cdr liste))
		)
	)	
)

; RESULTS :
; > ((check4Members '(1 2 9)) '(1 2 3 4))
; '((#t 1) (#t 2) (#f 9))

; > ((check4Members '(1 2 9 5 0)) '(1 2 3 4 6 8 0))
; '((#t 1) (#t 2) (#f 9) (#f 5) (#t 0))
