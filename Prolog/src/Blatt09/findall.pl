/*
a)
"assert/1 Mit dem Paedikat assert/1 ist es moeglich Prolog Klauseln dynamisch zur Datenbasis hinzuzufuegen."

"asserta/1 - schreibt Klauseln an den Anfang der Datenbasis."

"assertz/1 - schreibt Klauseln an das Ende der Datenbasis."

"Mit dem Praedikat radikat retract/1 ist es moeoglich Prolog Klauseln aus derDatenbasis zu loeschen"

Quelle:
http://www.cl.uni-heidelberg.de/courses/ws08/logik/material/Logik_Chapter_11.pdf

Explain:
Beispiel find-all(X,member(X,[1,2,3]),Y)

Zuerst wird mit dem aufrufen von find-all, post_it(X, Goal) aufgerufen, welches wiederrum mit call(Goal) schaut ob member(X,[1,2,3]) wahr ist, wenn ja dann wird X in asserta gespeichert,
	wenn es falsch ist, dann wird das zweite post_it(_,_) aufgerufen.
Danach wird noch gather([], Bag) bearbeitet: data999(X) wird in der liste ausgegeben. Mit retract wird data999 wieder aus der Datenbasis entfernt. 
Doppelte werden mit not(member(X,B) ausselektiert. (Also nicht in die Liste aufgenommen)
/*
b)
not(member(X,B)) wurde hinzugefuegt.
*/

find-all(X,Goal,Bag) :-   post_it(X,Goal), gather([],Bag).

post_it(X,Goal) :- call(Goal),          /* try Goal */
                  asserta(data999(X)), /* assert above others */
                  fail.                /* force backtracking   */
post_it(_,_).   				       /* gratuitous success    */

gather(B,Bag) :-  data999(X),          /* find next recorded solution  */
                  retract(data999(X)), /* erase posting       */
                  not(member(X,B)),   /*WAS ADDED FROM STUDENT*/
                  gather([X|B],Bag),   /* continue  ...        */
                   !.                   /* cut off rule below */
gather(S,S).                           /* when done          */
