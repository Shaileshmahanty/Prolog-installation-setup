domains 
name, password = symbol
predicates 
getinput(name,password) 
logon (integer) 
user (name, password) 
go
clauses 
go:-
logon(3), 
write("You are now logged on."),nl. 
logon(0):-!, 
write("Sorry, you are not permitted access."), 
fail. 
logon(_):-
getinput(Name,Password), 
user(Name,Password). 
logon(X):-
write("Illegal entry."),nl, 
XX = X - 1, 
logon(XX). 
getinput(Name,Password):-
write("Please enter your name : "), 
readln(Name), 
write("Please enter password : "), 
readln(Password). 
user(ali,vhora).