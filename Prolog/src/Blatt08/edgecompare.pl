% a.)
edgeCompare(Delta, [_,_,E1], [_,_,E2]) :- compare(Delta, E1,E2).

% testdata
% ?- compare(Delta, 3, 4).
% Delta = (<).

% ?- compare(Delta, 5, 5).
% Delta = (=).

% ?- compare(Delta, 4, 3).
% Delta = (>).

% b.)
minimumEdge(Edges, Min) :- predsort(edgeCompare, Edges, [Min|_]).

% test data
% ?- minimumEdge([[c, e, 44], [c, a, 34], [d, e, 93], [d, b, 55]], Min).
% Min = [c, a, 34].

% ?- minimumEdge([[c, e, 44], [c, a, 44], [d, e, 44], [d, b, 45]], Min).
% Min = [c, e, 44].
% ??

