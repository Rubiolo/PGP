% a) Why is function wrong?
% max(X, Y, X) :- X >= Y, !.
% max(X, Y, Y).

% change in:
max(X, Y, X) :- X >= Y, !.
max(X, Y, Y) :- Y > X.

% Why is max(3,1,1) not right?
% Es wird nur abgefangen, wenn das erste Glied Maximum ist.



% b) What is difference between p1 and p2?
p1 :- c.
p1 :- a, !, b.

p2 :- a, !, b.
p2 :- c.

% testvalues:
