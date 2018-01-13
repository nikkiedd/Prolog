%Reverse a nonlinear list
%reverse1(L:list, Acc:list R:list)
%reverse1(i, i, o)

reverse([],[],[]).
reverse([],R,R).
reverse([H|T],Acc, R):- atomic(H),
    			   reverse(T,[H|Acc],R).
reverse([H|T],Acc,R):- is_list(H),
    					reverse(H,[],HRev),
    					reverse(T,[HRev|Acc],R).

reverseWrap(L,R):-reverse(L,[],R).