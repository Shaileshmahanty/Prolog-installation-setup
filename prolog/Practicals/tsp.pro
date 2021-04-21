domains 
X,City1,City2=string 
Dist,Dist1,Dist2=integer 
predicates 
route(string,string,integer) 
read(string,string,integer) 
find 
clauses 
read("Surat","Baroda",150). 
read("Ahemedabad","Baroda",150). 
read("Valsad","Bombay",300). 
read("Bombay","Ahemedabad",500). 
read("Baroda","Surat",150). 
read("Surat","Valsad",100). 
read("Bombay","Pune",100). 
find:-
write("Source center:"), 
readln(City1), 
write("Dest center:"), 
readln(City2), 
route(City1,City2,Dist). 
route(City1,City2,Dist):-
read(City1,City2,Dist), 
writef("DISTANCE betn %10 and %10 is %2",City1,City2,Dist),nl. 
route(City1,City2,Dist):-
read(City1,X,Dist1), 
route(X,City2,Dist2), 
Dist=Dist1+Dist2, 
writef("The dist betn %10 and %10 is %2",City1,City2,Dist).