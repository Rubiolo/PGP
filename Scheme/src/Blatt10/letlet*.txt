a)
"5 - 3"
(let ((a  5)
	(b  3))
	(- a  b))

((lambda (a b) (- a b)) 5 3)
result: 5 - 3 = 2


b)
(define (test x)
	(let((x 7)
	(y x))
	(let ((z x))
	(+ z y))))
	
result: 11

x is local = 7
y is global x = 4
- z is local x = 7
- y = x
- So is: z + y = 7 + 4 = 11
	
(define (test x)
	(let*((x 7)
	(y x))
	(let ((z x))
	(+ z y))))
   
result: 14
local x = 7
- y = local x = 7
- z is local x = 7
- So is: z + y = 7 + 7 = 14
 
