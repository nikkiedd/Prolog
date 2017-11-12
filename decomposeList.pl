%Decompose a list in a list respecting the following: 
%[list of even numbers list of odd numbers] and also 
%return the number of even numbers and the numbers of odd numbers.

%decomp(L:list, F:list, NEven:natural number, NOdd:natural number)
%decomp(i,o,o,o) - main predicate
decomp(L,[F1|[F2]], NEven, NOdd):- decompEven(L,F1,NEven),
    					         decompOdd(L,F2,NOdd).

%decompEven(L:list, F1:List, NEven: natural number)
%decompEven(i,o,o)
decompEven([],[],0).
decompEven([H|T], [H|T1], NEven):- H mod 2 =:= 0,
   								   decompEven(T,T1,N1),
    						       NEven is N1+1.
decompEven([H|T], F, NEven):- H mod 2 =\= 0,
    						  decompEven(T,F,NEven).

%decompOdd(L:list, F1:List, NOdd: natural number)
%decompOdd(i,o,o)
decompOdd([],[],0).
decompOdd([H|T], [H|T1], NOdd):- H mod 2 =\= 0,
    							 decompOdd(T,T1,N1),
    						     NOdd is N1+1.
decompOdd([H|T], F, NOdd):- H mod 2 =:= 0,
    						decompOdd(T,F,NOdd).