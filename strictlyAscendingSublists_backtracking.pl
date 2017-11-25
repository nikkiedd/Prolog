%Write a predicate to determine all strictly ascending sublists of a given list.

%detAllAscSublists(L:list,F:list)	- THE MAIN PREDICATE
%detAllAscSublists(i,o)	- F i s a list of lists
detAllAscSublists(L,F):- detAllSublists(L,R),
						onlyAscendingSublists(R,F).	

%detAllSublists(L:list,R:list)
%detAllSublists(i,o)	- returns all the sublists of a given list
detAllSublists(L,R):- findall(X,sublist1(L,X),R).	

%sublist1(L:list, R:list)
%sublist1(i,o)
sublist1([],[]).
sublist1([First|Rest],[First|Sub]):-sublist1(Rest,Sub). 			
sublist1([_|Rest],Sub):- sublist1(Rest,Sub).

%onlyAscendingSublists(L:list, R:list) - both are lists of lists
%onlyAscendingSublists(i,o)
onlyAscendingSublists([],[]).
onlyAscendingSublists([H|T],[H|TR]) :- isAscending(H),
    					onlyAscendingSublists(T,TR).
onlyAscendingSublists([H|T],R) :- not(isAscending(H)),
    							onlyAscendingSublists(T,R).
%isAscending(L:list)
%isAscending(i) - returns true is the list is strictly ascending; false, otherwise
isAscending([_]).
isAscending([H1,H2|T]):- H1<H2,
    					isAscending([H2|T]).
