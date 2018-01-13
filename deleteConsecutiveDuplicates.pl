%Eliminate consecutive duplicates of elements from a given list
%el(L:list, R:list)
%el(i,o)

el([],[]).
el([H1],[H1]).
el([H1,H1|T1],T2):- el([H1|T1],T2).
el([H1,H2|T1],[H1|T2]):- H1=\=H2,
			 el([H2|T1],T2).