%Concatenate two lists.
%concat(L:list,E:list,R:list) 
%concat(i,i,o)

concat([],[],[]).
concat([],[H|T],[H|TR]):-concat([],T,TR).
concat([H|T],L,[H|R]):-concat(T,L,R).
