; main function getElements
(define (getElements String)
	(reco2 String "" 0)
)

; adding a symbol to  a String O -> " |O|"
(define (add2 String toADD)
	(string-append String (string-append " |" (string-append toADD "|")))
)


; recursive searching for a symbol and adding to result-String
(define (reco2 String result k)
	(if (eqv? k (- (string-length String) 1))
		result
		(if (symbol? (string-ref String k))
			(reco2 String (add2 result (string-ref String k)) (+ k 1))
			(reco2 String result (+ k 1))
		)
	)
)

string-length "String"
string-ref "String" k

; comments
(add2 "d" "1")

(add2 "|O|" "I")

reco2 "C6 H12 O6" "" 0)

(symbol? (string-ref "1H" 0))

(getElements "C6 H12 O6")
