%Remove the N-th element from a given list and return it
%removeNth(L:list ,N:natural number, E:elem at position N, F:final list)
%removeNth(i,i,o,o)

removeNth([E|T],1,E,T).
removeNth([H|T],N,E,[H|T2]):- N>1, N1 is N-1, removeNth(T,N1,E,T2).