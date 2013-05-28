% Stellen Sie eine kleine Wissensbasis von Tieren und Jaeger-Beute-Paaren nach dem Muster tier(katze) und jagt(katze, maus) zusammen. Stellen Sie dann die folgenden Anfragen:

tier(katze).
tier(maus).
tier(hund).

jagt(katze, maus).
jagt(hund, katze).
jagt(hund, maus).

% Welche Tiere jagen Mäuse?
%jagt(X,maus).

% Welche Tiere jagen Katzen?
%jagt(X,katze).

% Welches Tier ist sowohl Jäger als auch Beutetier?
%jagt(X,_),jagt(_,X).

% Welches Tier ist Beutetier?
%jagt(_,X).

% Welches Tier ist nur Jäger?
%jagt(X,_),not(jagt(_,X)).

% Wer jagt wen?
%jagt(X,Y).
