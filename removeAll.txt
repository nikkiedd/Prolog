%Remove all occurences of an atom from a list
%del(L:list,E:atom,F:list)
%del(i,i,o)

del([],_,[]).
del([E|T1],E,F):- del(T1,E,F).
del([H|T1],E,[H|T2]):- E=\=H, del(T1,E,T2).

