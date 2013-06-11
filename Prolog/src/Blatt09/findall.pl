/*
a)
"assert/1 Mit dem Paedikat assert/1 ist es moeglich Prolog Klauseln dynamisch zur Datenbasis hinzuzufuegen."

"asserta/1 - schreibt Klauseln an den Anfang der Datenbasis."

"assertz/1 - schreibt Klauseln an das Ende der Datenbasis."

"Mit dem Praedikat radikat retract/1 ist es moeoglich Prolog Klauseln aus derDatenbasis zu loeschen"

Quellen:
http://www.cl.uni-heidelberg.de/courses/ws08/logik/material/Logik_Chapter_11.pdf

Explain:

*/

/*
b)
not(member(X,B)) wurde hinzugefuegt.
*/

find-all(X,Goal,Bag) :-   post_it(X,Goal), gather([],Bag).

post_it(X,Goal) :- call(Goal),          /* try Goal */
                  asserta(data999(X)), /* assert above others */
                  fail.                /* force backtracking   */
post_it(_,_).                           /* gratuitous success    */

gather(B,Bag) :-  data999(X),          /* find next recorded solution  */
                  retract(data999(X)), /* erase posting       */
                  gather([X|B],Bag),   /* continue  ...        */
                  /*not(member(X,B)),*/     /*WAS ADDED FROM STUDENT*/
                   !.                   /* cut off rule below */
gather(S,S).                           /* when done          */
