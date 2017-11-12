%Add an element on position N in a list
%addAtPos(L:list, N:natural number, E:elem, F:list)
%addAtPos(i,i,i,o)

addAtPos(L,N,E,F):- addAtPos(L,N,E,1,F).
addAtPos([],N,_,CurrPos,[]):- N=\= CurrPos. 
addAtPos([],N,E,N,[E]).	%in case we want to add E on the last position
addAtPos([H|T],N,E,CurrPos,[E,H|T1]):- N=:= CurrPos,
    								  Pos is CurrPos+1,
    								  addAtPos(T,N,E,Pos,T1).
addAtPos([H|T],N,E,CurrPos,[H|T1]):- N=\=CurrPos, %we haven't yet reached te desired pos
    						Pos is CurrPos + 1,
    						addAtPos(T,N,E,Pos,T1).

%if N is out of range, the initial list will be returned:)