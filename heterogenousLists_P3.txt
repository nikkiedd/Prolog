%merge with removing duplicates ALREADY DEFINED :)

/*For a heterogeneous list, formed from integer numbers and list of numbers, merge 
 all sublists with removing the double values.
e.g. [1, [2, 3], 4, 5, [1, 4, 6], 3, [1, 3, 7, 9, 10], 5, [1, 1, 11], 8] =>
[1, 2, 3, 4, 6, 7, 9, 10, 11].*/

%myMerge(L:list, R:list)
%myMerge(i,o)
myMerge(L,R):- myMerge(L,[],R).
myMerge([],R,R).
myMerge([H|T],Acc,R):- is_list(H),
    		       merge(H,Acc,Acc1),
    		       myMerge(T,Acc1,R).
myMerge([H|T],Acc,R):- atomic(H),
    		       myMerge(T,Acc,R).