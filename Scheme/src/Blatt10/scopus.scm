a)
(define m 4)   
	(define (p m)   
		(pp 3))    
			(define (pp x)       
				(+ x m))
  
result: (p 10) = 7

m = 4
p = 4 = 4
(pp 3) berechnet 3 + 4 die  Zuweisung von m = 4 gilt bis zum aufruf (pp x)    
b)              
(define n 4)
	(define (q n)
		(define (qq x)
			(+ x n))    
			(qq 3))
			
result: (q 10) = 13

n = 4
q = n = 4
hier wird qq in der Definition von q definiert, beim aufruf von (q 10)
wird also statt der globalen variable n = 4 die lokale genommen.
