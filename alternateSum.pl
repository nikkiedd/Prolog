%Calculate the alternate sum of a list’s elements (l1 - l2 + l3 ...)
%altSum(L:list, P:natural number, S:int)
%altSum(i,i,o)
%
altSum(L,S):-altSum(L,1,S).
altSum([],_,0).
altSum([H|T],P,S):- P mod 2 =\= 0,
    				P1 is P+1,
    				altSum(T,P1,S1),
    				S is S1+H.
altSum([H|T],P,S):- P mod 2 =:= 0,
    				P1 is P+1,
    				altSum(T,P1,S1),
    				S is S1-H.