domains 
predicates 
jug(integer, integer)
clauses 
jug(2, _). 
jug(0, 2):-
write("(0, 2)"), nl, 
write("(2, 0)"), nl. 
jug(4, 0):-
write("(4, 0)"), nl, 
jug(0, 0). 
jug(4, 3):-
write("(4, 3)"), nl, 
jug(0, 0). 
jug(3, 0):-
write("(3, 0)"), nl, 
jug(3, 3). 
jug(X, 0):-
write("(", X, ", 0)"), nl, 
jug(0, 3). 
jug(0, 3):-
write("(0, 3)"), nl, 
jug(3, 0).
jug(0, X):-
write("(0, ", X, ")"), nl, 
jug(0, 0). 
jug(3, 3):-
write("(3, 3)"), nl, 
jug(4, 2). 
jug(4, 2):-
write("(4, 2)"), nl, 
write("(", 2, ", 0)"), nl, 
jug(2, 0). 
jug(X, Y):-
X>4, 
fail, 
Y>3, 
fail.