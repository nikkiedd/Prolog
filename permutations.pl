%Find all the permutations of a given set.
%perm(L:list,R:list) - it's tail recursive
%perm(i,o)
perm([],[]).
perm(L,[E|T]):-remove1(L,E,R),
    		perm(R,T).


%removes a random element from a given list and 'returns' it
%remove1(L:list, E:element, R:list)
%remove1(i,o,i)
remove1([H|T],H,T).
remove1([H|T],E,[H|R]):-remove1(T,E,R).


%allPerms(L:list, R:list<of lists>)
%allPerms(i,o)
allPerms(L,Res):-findall(R, perm(L,R),Res).