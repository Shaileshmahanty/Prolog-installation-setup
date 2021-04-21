domains 
name,password = symbol 
predicates 
getinput(name,password) 
logon 
repeat
clauses 
repeat. 
repeat:-
repeat. 
logon:-
getinput(_,_), 
write("You are now logged on."),nl. 
logon:-
repeat, 
write("Sorry,you are not permitted access."),nl, 
write("Please try again."),nl, 
getinput(_,_), 
write("You are now logged on."). 
getinput(Name,Password):-
write("Please enter your name : "), 
readln(Name),nl, 
write("Please enter password : "), 
readln(Password),nl,