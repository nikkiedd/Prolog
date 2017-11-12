%Add a value v after 1-st, 2-nd, 4-th, 8-th, etc. element in a list
%( after positions that are powers of 2).

%addAfter(L:list, V:natural number, F:list) - wrapper function
%addAfter(i,i,o)
addAfter(L,V,F):- addAfter1(L,V,1,1,F). %initialise the current position and the desired position with 1

%addAfter1(L:list, V:natural number, CurrPos:natural number, Pos:natural number, F:list)
%addAfter1(i,i,i,i,o)
%DesiredPos represents the next position( relative to the current one) which is a power of 2
addAfter1([],_,_,_,[]).
addAfter1([H|T],V, CurrPos, DesiredPos, [H,V|T1]) :- CurrPos =:= DesiredPos,
    								  DesiredPos1 is DesiredPos*2,
    								  CurrPos1 is CurrPos+1,
    								  addAfter1(T,V,CurrPos1, DesiredPos1, T1).
addAfter1([H|T],V, CurrPos, DesiredPos,[H|T1]) :- CurrPos =\= DesiredPos,
    								  CurrPos1 is CurrPos+1,
    								  addAfter1(T,V,CurrPos1, DesiredPos, T1).