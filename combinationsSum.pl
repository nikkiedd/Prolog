%Find all the combinations of elements from a given list having the sum S.
%comb(L:list, S:int, R:list)
%comb(i,i,o)
comb([],0,[]).
comb([H|T],S,[H|T1]):- S1 is S-H,
    			comb(T,S1,T1).
comb([_|T],S,R):- comb(T,S,R).

%allComb(L:list, S:int, Res:list <of lists>)
%allComb(i,i,o)
allComb(L,S,Res):-findall(R,comb(L,S,R),Res).