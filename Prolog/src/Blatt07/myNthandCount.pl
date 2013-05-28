% a)
myNth([H|L],N,E) :- (N == 0 -> H == E, ! ; NEXT is N - 1, myNth(L,NEXT,E)).
% 
% a) What is [not] possible?
% Mann kann nicht moeglich nach einem Element an einer bestimmten Stelle "N" zu suchen.

% b)
count([],_,N) :- N == 0.
count([E|T],E,N) :- NEXT is N - 1, count(T,E,NEXT), !.
count([_|T],E,N) :- count(T,E,N).

% Mann kann nicht moeglich nach einem Element an einer bestimmten Stelle "N" zu suchen.
% Ausserdem wird bei count nicht die genaue Anzahl angeschaut.
% Beispielsweise is count([1,1,1,2],1,2), denn die 1 stecks sowohl ein, zwei als auch 
% drei mal in [1,1,1,2].
