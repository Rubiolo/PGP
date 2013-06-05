% a)
mySubstOne(_,_,[],[]).
mySubstOne(E, S, [E|L], [S|N]) :- same(L,N), !.
mySubstOne(E, S, [H|L], [H|NList]) :- H \= E, mySubstOne(E,S,L,NList).

% helpfunction
same([],[]).
same([H|L], [H|N]) :- same(L,N).

% b)
mySubstAll(_,_,[],[]).
mySubstAll(E, S, [E|L], [S|NList]) :- mySubstAll(E, S, L, NList), !.
mySubstAll(E, S, [H|L], [H|NList]) :- H \= E, mySubstAll(E, S, L, NList).

