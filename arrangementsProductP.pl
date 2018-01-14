%Generate all arrangements of K elements from a list L having the product P.
%arr(L:list, K:natural number, P:integer, R:list)
%arr(i,i,i,o)
arr([E|_],1,E,[E]).
arr([H|T],K,P,[H|R]):- K1 is K-1,
    					P1 is P/H,
    					arr(T,K1,P1,R).
arr([_|T],K,P,R):-arr(T,K,P,R).



allArr(L,K,P,Res):-findall(R,arr(L,K,P,R),Res).