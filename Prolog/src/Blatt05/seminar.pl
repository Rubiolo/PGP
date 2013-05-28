studiert(anton, if).
studiert(hagen, cv).
studiert(gunther, cv).
studiert(adele, if).
studiert(uta, cv).
studiert(anna, if).

student(anton).
student(hagen).
student(gunther).

studentin(adele).
studentin(uta).
studentin(anna).

% a)
teams1(X, Y) :- studiert(X, _), studiert(Y, _), X \= Y.

% b)
teams2(X, Y) :- studiert(X, _), studiert(Y, _), X \= Y, student(X), studentin(Y).

% c)
teams3(X, Y) :- studiert(X, A), studiert(Y, B), X \= Y, student(X), studentin(Y), A \= B.

