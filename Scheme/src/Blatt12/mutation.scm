(define a '(1 2))

(define b '(3))

; a)
; 1 b: '((1 2))
(set-car! b a)

; 2 b: '((2))
(set-car! b (cdr (car b)))

; 3 b: '(3 1 2)
(set! b (cons '3 a)
)

; 4 b: '(3 2)
(set! b (cons (car b) (car(cdr (cdr b)))))

; b)
(define x '(a c))

(define y '(b))

; x '(a b c)
(set-cdr! y (cdr x))
(set! x (list(car x)))
(set-cdr! x y)
