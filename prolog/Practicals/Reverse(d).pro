domains 
namelist=symbol* 
predicates 
reverse_list(namelist,namelist) 
reverse(namelist,namelist,namelist) 
clauses 
reverse_list(Inputlist ,Outputlist):-
reverse(Inputlist,[],Outputlist). 
reverse([],Inputlist,Inputlist). 
reverse ( [Head | Tail ],List1, List2 ):-
reverse(Tail,[Head | List1], List2 ).