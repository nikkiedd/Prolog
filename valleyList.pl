%Find if a given list is of type 'valley'
%e.g. [10,8,4,2,-1,7,90] is of type valley; the elems descend and then ascend.
%No consecutive duplicates. No fluctuations.

%isValley(L:list, reachedBottom:0 or 1). 0 indicates descent, 1 ascent

isValley(L):-isValley(L,0).	% wrapper function
isValley([H1,H2,H3|T], 0):- H1>H2,	% we've reached the bottom of the valley(H2)
    			    H2<H3,
    			    isValley([H2,H3|T],1).
isValley([H1,H2|T], 0) :- H1>H2,
    			  isValley([H2|T],0).
isValley([H1,H2|T],1) :- H1<H2,
    		         isValley([H2|T],1).
isValley([_],1).
isValley([H1,H2|_],_):- H1=:=H2, false.	% a valley can't have consecutive duplicates
