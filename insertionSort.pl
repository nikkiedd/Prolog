%Insert an element in the right place in a sorted list
%insert(L:list,E:elem,F:list)
%insert(i,i,o)

insert([],E,[E]).
insert([H|T],E,[H|T1]):-E>H,
    					insert(T,E,T1).
insert([H|T],E,[E,H|T]):- E=<H.

%Insertion Sort(WITHOUT removing the duplicates)
%insertionSort(L:list, S:list)
%insertionSort(i,o)

insertionSort(L,S):-insertionSort(L,[],S).
insertionSort([],S,S).
insertionSort([H|T],Acc,S):- insert(Acc,H,Partial),	%Acc is an accumulator(collector variable)- it holds the part of the list which has been sorted so far
    						insertionSort(T,Partial,S).

%Insertion Sort(WITH removing the duplicates)
%insertionSort(L:list, S:list)
%insertionSort(i,o)

insertionSort(L,S):-insertionSort(L,[],S).
insertionSort([],S,S).
insertionSort([H|T],Acc,S):- not(member(H,Acc)),
    						insert(Acc,H,Partial),	%Acc is an accumulator(collector variable)- it holds the part of the l%ist which has been sorted so far
							insertionSort(T,Partial,S).
insertionSort([H|T],Acc,S):- member(H,Acc),
							insertionSort(T,Acc,S).