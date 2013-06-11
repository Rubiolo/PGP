
onstreet(X,s(X,_,_,_,_)). %house1 - s(whoIs,colorOfHouse,pet,brand,whatDrinking)
onstreet(X,s(_,X,_,_,_)). %house2
onstreet(X,s(_,_,X,_,_)). %house3
onstreet(X,s(_,_,_,X,_)). %house4
onstreet(X,s(_,_,_,_,X)). %house5

middlehouse(X,s(_,_,X,_,_)). %houseInTheMiddle
firsthouse(X,s(X,_,_,_,_)).  %firstHouse

isleft(X,Y,s(X,Y,_,_,_)). %XisLeftatY
isleft(X,Y,s(_,X,Y,_,_)). %XisLeftatY
isleft(X,Y,s(_,_,X,Y,_)). %XisLeftatY
isleft(X,Y,s(_,_,_,X,Y)). %XisLeftatY

isright(Y,X,s(X,Y,_,_,_)). %YisRightatX
isright(Y,X,s(_,X,Y,_,_)). %YisRightatX
isright(Y,X,s(_,_,X,Y,_)). %YisRightatX
isright(Y,X,s(_,_,_,X,Y)). %YisRightatX

isnextto(X,Y,S) :- isleft(X,Y,S); isright(X,Y,S). %definitionOfNextHouseTo

fact01(S) :- onstreet(house(englishman,red,_,_,_),S). %englishManLivesInRedHouse
fact02(S) :- onstreet(house(spaniard,_,dog,_,_),S). %spanishManHasDog
fact03(S) :- onstreet(house(_,green,_,_,coffe),S). %coffeeInRedHouse
fact04(S) :- onstreet(house(ukrainian,_,_,_,tea),S). %ukrainianManDrinkingTea
fact05(S) :- isright(house(_,green,_,_,_),house(_,white,_,_,_),S). %greenHouseIsRightNextToWhiteHouse
fact06(S) :- onstreet(house(_,_,snails,altem-gold,_),S). %oldGoldCigarettesSmokerHasSnailsAsAPet
fact07(S) :- onstreet(house(_,yellow,_,kools,_),S). %cigarettesBrandKoolsInYellowHouse
fact08(S) :- middlehouse(house(_,_,_,_,milk),S). %drinkingMilkInMiddlehouse
fact09(S) :- firsthouse(house(norwegian,_,_,_,_),S). %norwegianLivesInFirstHouse
fact10(S) :- isnextto(house(_,_,_,chesterfields,_),house(_,_,fox,_,_),S). %chesterfieldSmokerLivesNextToManWithfox
fact11(S) :- isnextto(house(_,_,_,kools,_),house(_,_,horse,_,_),S). %koolsIsSmokingInTheHouseNextToHouseWithHorse
fact12(S) :- onstreet(house(_,_,_,lucky,orangejuice),S). %luckyStrikeSmokerisDrinkingOrangeJuice
fact13(S) :- onstreet(house(japanese,_,_,parliaments,_),S). %japaneseManSnokecigarettesBrandParliaments
fact14(S) :- isnextto(house(norwegian,_,_,_,_),house(_,blue,_,_,_),S). %norwegianManLivesNextToBlueHouse

facts(S) :- fact01(S),fact02(S),fact03(S),fact04(S),fact05(S),fact06(S),fact07(S),fact08(S),fact09(S),fact10(S),fact11(S),fact12(S),fact13(S),fact14(S). %createsResult
/*
%Question: 1.) Which horse and 2.) who is drinking water.

1.)house(norwegian, yellow, fox, kools, _G621) -> Water
2.)house(japanese, green, _G586,parliaments, coffe)) -> Horse

facts(X).
X = s(house(norwegian, yellow, fox, kools, _G621), house(ukrainian, blue, horse, chesterfields, tea), house(englishman, red, schnecken, altem-gold, milk), house(spaniard, white, dog, lucky, orangejuice), house(japanese, green, _G586, parliaments, coffe))
*/


/*
Source:
http://en.wikipedia.org/wiki/Zebra_Puzzle
*/

