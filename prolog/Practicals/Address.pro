domains 
name,address,city,state=symbol 
zip=symbol
predicates 
person(name,address,city,state,zip) 
go
clauses 
go:-
clearwindow, 
write("Enter details"),nl, 
person(_,_,_,_,_), 
write("Successful"),nl. 
person(Name,Add,City,State,Zip):-
write("Enter name,address,city,state,zip"),nl, 
readln(Name), 
write("Name: ",Name),nl, 
readln(Add), 
write("Address: ",Add),nl, 
readln(City), 
write("City: ",City),nl, 
readln(State), 
write("State: ",State),nl, 
readln(Zip), 
write("ZIP:",Zip),nl.