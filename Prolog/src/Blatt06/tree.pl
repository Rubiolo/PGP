% mann(name).
mann(anton).
mann(hugo).	
mann(fritz).
mann(heinz).
mann(wilhelm).
mann(alfons).

% frau(name).
frau(wilhelmine).
frau(elfriede).
frau(maria).
frau(brunhilde).
frau(theresia).

% mutter(mutter, kind).
mutter(wilhelmine, anton).
mutter(wilhelmine, theresia).

mutter(brunhilde, wilhelm).

mutter(elfriede, maria).
mutter(elfriede, hugo).

mutter(theresia, alfons).

% verheiratet(Frau, Mann).
verheiratet(wilhelmine, fritz).
verheiratet(brunhilde, heinz).
verheiratet(elfriede, anton).
verheiratet(theresia, wilhelm).

% vater(vater,kind)
vater(Vater,Kind) :- 	mutter(Mutter,Kind),
			verheiratet(Vater,Mutter).

% oma(oma,enkel)
opa(Opa,Engel) :- 	vater(Vater,Enkel),
			vater(Opa,Vater);
			mutter(Mutter,Enkel),
			vater(Opa,Mutter).

% opa(opa,enkel)
oma(Oma,Engel) :- verheiratet(Opa,Oma),opa(Opa,Engel).

% schwiegermutter(schwiegermutter, schwiegerkind).
schwiegermutter(Schwiegermutter, Schwiegerkind) :- 	verheiratet(Frau, Schwiegerkind),
							mutter(Schwiegermutter, Frau);
							verheiratet(Schwiegerkind, Mann),
							mutter(Schwiegermutter, Mann).

% schwiegervater(schwiegervater, schwiegerkind).
schwiegervater(Schwiegervater, Schwiegerkind) :-	verheiratet(Frau, Schwiegerkind),
							vater(Schwiegermutter, Frau);
							verheiratet(Schwiegerkind, Mann),
							vater(Schwiegermutter, Mann).

% tante(tante, neffen).
tante(Tante, Neffen) :- 	frau(Tante),
				mutter(Oma,Tante),
				oma(Oma, Neffen),
				not(mutter(Tante, Neffen));
				frau(Tante),
				schwiegermutter(Oma, Tante),
				oma(Oma, Neffen),
				not(mutter(Tante, Neffen)).

& onkel(onkel, neffen).
onkel(Onkel, Neffen) :- 	mann(Onkel),
				mutter(Oma, Onkel),	
				Oma(Oma, Neffen),
				not(vater(Onkel, Neffen));
				mann(Onkel),
				schwiegermutter(Oma, Onkel),
				oma(Oma, Neffen),
				not(vater(Onkel, Neffe)).

% vorfahren(Vorfahren, Jemanden).
vorfahren(Vorfahren, Jemanden) :- 	mutter(Vorfahren, Jemand).
vorfahren(Vorfahren, Jemanden) :- 	vater(Vorfahren, Jemand).
vorfahren(Vorfahren, Jemanden) :- 	mutter(Vorfahren, X), vorfahren(X, Jemanden);
					vater(Vorfahren, X), vorfahren(X, Jemanden).

% verwant(Person1, Person2)
verwant(Person1, Person2) :- 	vorfahren(Person1, Person2);
				vorfahren(X, Person2),
				vorfahren(X, Person1).


