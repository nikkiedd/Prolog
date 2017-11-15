%mySum is ALREADY DEFINED :) (in addingLists.pl)

/*For a heterogeneous list, formed from integer numbers and list of digits, write a 
predicate to compute the sum of all numbers represented as sublists.
Eg.: [1, [2, 3], 4, 5, [6, 7, 9], 10, 11, [1, 2, 0], 6] => [8, 2, 2]*/

%sumLists(L:list,S:list)
%sumLists(i,o)
sumLists(L,S):-sumLists(L,[],S).
sumLists([],Acc,Acc).
sumLists([H|T],Acc,S):- is_list(H),
    			mySum(H,Acc,Acc1),
    			sumLists(T,Acc1,S).
sumLists([H|T],Acc,S):- atomic(H),
    			sumLists(T,Acc,S).