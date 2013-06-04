%dobblereverse: highreverse and deepreverse
deepReverse(L1,L2):-highrev(L1,L3),deeprev(L3,L2),!.

% empty == empty
deeprev([],[]).

deeprev([H1|L1],[H2|L2]):-deepReverse(H1,H2),deeprev(L1,L2),!.

% A == A: do nothing
deeprev(A,A):-!.

% empty == empty
highrev([],[]).

highrev([HA|A],[HB|B]):-reverse([HA|A],[HB|B]),!.

% A == A
highrev(A,A).
