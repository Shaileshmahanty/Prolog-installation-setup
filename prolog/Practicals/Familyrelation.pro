domains 
person=symbol 
predicates 
male(person) 
female(person) 
parent(person,person) 
father(person,person) 
mother(person,person) 
sister(person,person) 
brother(person,person) 
son(person,person) 
daughter(person,person) 
child(person,person) 
wife_of(person,person) 
husband_of(person,person) 
grand_father(person,person)
clauses 
father("Virat", "Suresh"). 
father("Virat","Mukesh"). 
father("Mukesh "," Virat "). 
wife_of("Anushka"," Virat "). 
wife_of("Anushka "," Mukesh "). 
female("Anushka "). 
female("Suresh "). 
female("Anushka "). 
male("Virat "). 
male("Raj"). 
male("Mahesh"). 
male(X) :-
husband_of (X,_). 
husband_of(X,Y) :-
wife_of (Y,X). 
mother(X,Y):-
wife_of (X,Z), 
father(Z,Y).
parent(X,Y):-
father(X,Y); 
mother(X,Y). 
child(X,Y):-
parent(Y,X). 
son(X,Y):-
child(X,Y), 
male(X). 
daughter(X,Y):-
child(X,Y), 
female(X). 
brother(X,Y):-
father(Z,X), 
father(Z,Y), 
male(X), 
not (X=Y). 
sister(X,Y):-
father(Z,X), 
father(Z,Y), 
female(X), 
not (X=Y). 
grand_father(X,Y):-
parent(X,Z), 
parent(Z,Y), 
male(X).
