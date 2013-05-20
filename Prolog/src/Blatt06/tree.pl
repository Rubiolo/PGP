mann(anton).
mann(hugo).	
mann(fritz).
mann(heinz).
mann(wilhelm).
mann(alfons).

frau(wilhelmine).
frau(elfriede).
frau(maria).
frau(brunhilde).
frau(theresia).

mutter(wilhelmine, anton).
mutter(wilhelmine, theresia).

mutter(brunhilde,wilhelm).

mutter(elfriede, maria).
mutter(elfriede, hugo).

mutter(theresia, alfons).

verheiratet(wilhelmine,fritz).
verheiratet(brunhilde,heinz).
verheiratet(elfriede,anton).
verheiratet(theresia,wilhelm).

verheiratet(Vater,Mutter) :- vater(Father,Kind),mutter(Mother,Kind).

opa(Opa,Engel) :- 	vater(Vater,Enkel),
			vater(Opa,Vater);
			mutter(Mutter,Enkel),
			vater(Opa,Mutter).

oma(Oma,Engel) :- verheiratet(Opa,Oma),opa(Opa,Engel).
