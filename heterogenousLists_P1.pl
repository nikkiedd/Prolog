%insertionSort with removing duplicates ALREADY DEFINED :)

/*For a heterogeneous list, formed from integer numbers and list of numbers, sort every
sublist with removing duplicates.
Eg.: [1, 2, [4, 1, 4], 3, 6, [7, 10, 1, 3, 9], 5, [1, 1, 1], 7] =>
[1, 2, [1, 4], 3, 6, [1, 3, 7, 9, 10], 5, [1], 7].*/

%mySort(L:list, R:list)
%mySort(i,o)

mySort([],[]).
mySort([H|T],[H|T1]):- atomic(H),
    				 mySort(T,T1).
mySort([H|T],[H1|T1]):-is_list(H),
    				   insertionSort(H,H1),
    				   mySort(T,T1).

