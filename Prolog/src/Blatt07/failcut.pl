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
% vergleich zu Haskell: Klauseln werden von oben nach unten abgearbeitet. Wenn oben schon eine Schranke ist,
% und mehr Bedingungen hat, als die folgenden Klauseln, dann fuehrt der Ausdruck zu "Fehlern".
% Zusammengefasst: erst "leichte" Terme aufschreiben, und dann "kompliziertere", um solche "Fehler zu vermeinden."
% p1 verwendet die erste und zweite Klausel, wohingegen p2 durch "!" nur eine benutzt und den Rest ausschliesst.
