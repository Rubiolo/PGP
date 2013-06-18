% ########## PROLOG IMPLEMENTATION ##########

digit(0).
digit(1).
digit(2).
digit(3).
digit(4).
digit(5).
digit(6).
digit(7).
digit(8).
digit(9).

positiveDigit(A) :- digit(A), A \= 0.

narcNum(X):- positiveDigit(X),digit(A),digit(B),digit(C),digit(D),
             X is X*10000+A*1000+B*100+C*10+D,Y is X**1+A**2+B**3+C**4+D**5,
             X =:= Y,X>10.

narcNum(X):- positiveDigit(A),digit(B),digit(C),digit(D),
             X is A*1000+B*100+C*10+D,Y is A**1+B**2+C**3+D**4,
             X =:= Y,X>10.
narcNum(X):- positiveDigit(B),digit(C),digit(D),
             X is B*100+C*10+D,Y is B**1+C**2+D**3,
             X =:= Y,X>10.
narcNum(X):- positiveDigit(C),digit(D),
             X is C*10+D,Y is C**1+D**2,
             X =:= Y,X>10.

allNarc(X) :- setof(X,allNarc(X),Narcs)
