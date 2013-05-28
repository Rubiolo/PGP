% a) Gegeben sind folgende Definitionen:

obst(apfel).

obst(pfirsich) :- !.

obst(birne).

% explain the result:
% 1.) obst(X).
% result: X =  apfel, X = pfirsich.
% Der Operator "!" fuehrt dazu, dass bei einer Suche nach dem "X" die Weitersuche nach Alternativloesungen
% bei dem Operator "!" abgebrochen wird. Dadurch wird hier bei der Ausgabe auch kein "X = birne" angezeigt.

% 2.) obst(X),obst(Y).
% result:
% X = Y, Y = apfel ;
% X = apfel, Y = pfirsich ;
% X = pfirsich, Y = apfel ;
% X = Y, Y = pfirsich.
% Hier aehnlich wie beim ersten Beispiel. Wir suchen "X" und "Y", wobei beides laut Definition "obst" sein muessen.
% Die Suche nach Alternativloesungen endet hier wieder kurz vor obst(birne). aufgrund des Operators "!".

% 3.) obst(X),!,obst(Y).
% result:
% X = Y, Y = apfel ;
% X = apfel, Y = pfirsich.
% Hier werden weitere Alternativen nach dem obst(apfel). nicht mehr beachtet, da nur Paare gefunden werden,
% welche als "X = apfel" haben. Spriche: nur das erste zutreffendes Element wird behandelt.

% b) Definieren Sie das Praedikat class(N,C)

pos(X) :- X > 0.
neg(X) :- X < 0.
zero(X) :- X == 0.

class(N,pos) :- pos(N),!. 
class(N,neg) :- neg(N),!. 
class(N,zero) :- zero(N).

