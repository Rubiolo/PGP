edgeCompare(Delta, [_,_,G1], [_,_,G2]) :- compare(Delta, G1,G2).


minimumEdge(Edges, Min) :- predsort(edgeCompare, Edges, [Min|_]).
