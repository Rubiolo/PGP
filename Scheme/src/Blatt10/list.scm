a)
(cdr '((a (b c) d)))
'()

(car (cdr (cdr '(a (b c) (d e)))))
'(d e)

(car (cdr '((1 2) (3 4) (5 6))))
'(3 4)

(cdr (car '((1 2) (3 4) (5 6))))
'(2)

(car (cdr (car '((cat dog hen)))))
'dog

(cadr '(a b c d))
'b

(cadar '((a b) (c d) (e f)))
'b

b)
(car(cdr(cdr'(b c a d))))
'a

(car(cdr(car'((b a) (c d)))))
'a

(car(car(cdr'((d c)(a)(b)))))
'a'

(car(car(car'(((a))))))
'a

c)
define (wrappa word n)
  (cond
   [(= n 0) word]
   [else (list (wrappa word (- n 1)))]))
