%Generate all arrangements of K elements from a list L having the product P.
%arr(L:list, K:natural number, P:integer, R:list)
%arr(i,i,i,o)
arr(L,1,E,[E]):-rem(L,E,_).
arr(L,K,P,[E|R]):- K1 is K-1,
    			   rem(L,E,Rest),
    				P1 is P/E,
    				arr(Rest,K1,P1,R).

rem([H|T],H,T).
rem([H|T],E,[H|R]):-rem(T,E,R).


allArr(L,K,P,Res):-findall(R,arr(L,K,P,R),Res).