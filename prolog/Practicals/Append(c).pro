domains 
namelist=symbol* 
predicates 
append ( namelist , namelist,namelist ) 
clauses 
append ( [ ], ListB, ListB ). 
append ( [ X | List1 ], List2 ,[ X | List3 ] ):-
append (List1,List2,List3 ).