domains 
state,city = string 
predicates 
location(city,state) 
go 
checkstate(state)
clauses 
go:-
writef(" %-15 %5 \n","CITY","STATE"), 
fail. 
go :-
location(City,State), 
checkstate(State), 
writef(" %-15 %5 \n",City,State), 
fail. 
go. 
location("Anand","Gujarat"). 
location("Jaipurpur","Rajasthan"). 
location("Bombay","Maharastra"). 
checkstate("Maharastra") :-
!,fail. 
checkstate(_).
