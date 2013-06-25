; main function getElements
(define (getElements String)
	(reco2 String "" 0)
)

; adding a symbol to a String O -> " |O|"
(define (add2 String toADD)
	(string-append String (string-append " |" (string-append (make-string 1 toADD) "|")))
)


; recursive searching for a symbol and adding to result-String
(define (reco2 String result k)
	(if (eq? k (string-length String))
		result
		(if (nummber? (string-ref String k))
			(reco2 String result (+ k 1))
			(if (char-whitespace? (string-ref String k))
				(reco2 String result (+ k 1))
				(reco2 String (add2 result (string-ref String k)) (+ k 1))
			)
		)
	)
)

; function control: is a char a number? number are{#\1, #\2, #\3, #\4, #\5, #\6, #\7, #\8, #\9}
(define (nummber? oneString)
	(or (or (or (or (or (or (or (or (or (char=? oneString #\1) (char=? oneString #\2)) (char=? oneString #\3)) (char=? oneString #\4)) (char=? oneString #\5)) (char=? oneString #\6)) (char=? oneString #\6)) (char=? oneString #\7)) (char=? oneString #\8)) (char=? oneString #\9))
)
