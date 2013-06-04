% Graph == [[a,b,12],[a,c,34],[a,e,78],[b,d,55],[b,e,32],[c,d,61],[c,e,44],[d,e,93]].

edgeIn([H|Graph], [N1,N2],Edge) :-(member(N1,H),
member(N2,H) -> Edge = H, !;
edgeIn(Graph,[N1,N2],Edge)).
