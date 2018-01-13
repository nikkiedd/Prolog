%Find all the combinations of K elements from a given list having the sum S.
%comb(L:list, S:int, K:natural no, R:list)
%comb(i,i,i,o)
comb([],0,0,[]).
comb([H|T],S,K,[H|T1]):- S1 is S-H,
                          K1 is K-1,
    					comb(T,S1,K1,T1).
comb([_|T],S,K,R):- comb(T,S,K,R).


%allComb(L:list, S:int, K:natural no, Res:list <of lists>)
%allComb(i,i,i,o)
allComb(L,S,K,Res):-findall(R,comb(L,S,K,R),Res).