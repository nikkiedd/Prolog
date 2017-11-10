%Produce a list of pairs (atom, n) from an initial list 
%of atoms. In this initial list "atom" has n occurrences.

%del(L:list,E:atom,F:list)
%del(i,i,o)
del([],_,[]).
del([E|T1],E,F):- del(T1,E,F).
del([H|T1],E,[H|T2]):- E=\=H, del(T1,E,T2).

%noOcc(L:list,E:atom,N:list)
%noOcc(i,i,o)
noOcc([],_,1).
noOcc([E|T],E,N):- noOcc(T,E,N1),
N is N1+1.
noOcc([H|T],E,N):- E=\=H,
noOcc(T,E,N).

%add(L:list,E1:atom,E2:atom,F:list)
%add(i,i,i,o)
add([],E1,E2,[[E1,E2]]).
add([H|T],E1,E2,[H|TR]):-add(T,E1,E2,TR).

%pairs(L:list, F:list) - the MAIN PREDICATE
%pairs(i,o)
pairs([],[]).
pairs([H|T],F):- noOcc(T,H,N),
		del(T,H,T1),
		add(F1,H,N,F),
		pairs(T1,F1).
