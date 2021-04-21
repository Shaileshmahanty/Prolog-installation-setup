domains 
symbolist = symbol * 
integerlist = integer * 
predicates 
Length ( symbolist , integer ) 
Length ( integerlist , integer ) 
clauses 
Length ( [ ], 0 ). 
Length ( [_| Tail ],N):-
Length ( Tail , N1 ), 
N = 1 + N1.
