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
		(help (append result (list(list((curry intern?) (car rest) liste)))) (cdr rest) liste)
	)
)

(define (intern? x liste)
	(if (null? liste)
		#f
		(if (equal? x (car liste))
			#t
			(intern? x (cdr liste))
		)
	)	
)

; trash
((check4Members '(1)) '(1 2 3))
(map ((curry +) 10) '(1 2 3))
(help (
((consElem2All 'b) '((1) (2 3) (4)))
consElem2All 'b
((check4Members '()) '(1 2 3 4))
(map ((curry equal?) (car rest)) '((1 2 1 1 3 1 1))
((consElem2All ) )
