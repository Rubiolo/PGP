;;; Structure and Interpretation of Computer Programs
;;; (Harold Abelson and Gerald Jay Sussman with Julie Sussman)

;;; Added by Bjoern Hoefling (for usage with MIT-Scheme)

(define (atom? x)
  (or (number? x)
      (string? x)
      (symbol? x)
      (null? x)
      (eq? x #t)))

;;; Section 2.2.4 -- Symbolic differentiation

(define (deriv exp var)
  (cond ((constant? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))))

(define (constant? x) (number? x))

(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum a1 a2) (list '+ a1 a2))

(define (make-product m1 m2) (list '* m1 m2))

(define (sum? x)
  (if (not (atom? x)) (eq? (car x) '+) nil))

(define (addend s) (cadr s))

(define (augend s) (caddr s))

(define (product? x)
  (if (not (atom? x)) (eq? (car x) '*) nil))

(define (multiplier p) (cadr p))

(define (multiplicand p) (caddr p))

;;; examples from the testbook

(deriv '(+ x 3) 'x)
;Value 1: (+ 1 0)
(deriv '(* x y) 'y)
;Value 2: (+ (* x 1) (* 0 y))
(deriv '(* (* x y) (+ x 3)) 'x)
;Value 3: (+ (* (* x y) (+ 1 0)) (* (+ (* x 0) (* 1 y)) (+ x 3)))

