%Add an element at the end of a given list.
%addLast(L:list,E:list,R:list)
%addLast(i,i,o)

addLast([H|T],E,[H|TF]):-addLast(T,E,TF).
last([E],E).
last([_|T],E):-last(T,E).
