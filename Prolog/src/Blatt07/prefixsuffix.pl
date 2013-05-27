% a) Definieren Sie unter Verwendung von append ein Prolog-Prädikat  prefix(Pre, List), 
% das genau dann zutrifft, wenn die Liste Pre ein Anfangsteil (Präfix) von Liste List ist.

prefix(Pre,List) :- append(Pre, _, List).


% b) Definieren Sie entsprechend ein Prolog-Prädikat suffix(Suf, List),
%  das genau dann zutrifft, wenn die Liste Suf ein Endteil (Suffix) von Liste List ist.

suffix(Suf,List) :- append(_, Suf, List).
