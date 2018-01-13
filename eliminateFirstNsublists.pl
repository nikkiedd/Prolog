%Given a nonlinear list, eliminate the first N sublists with an even length.

%len(L:list, N:natural number)
%len(i,o)
len([], 0).
len([_|T], N):- len(T,N1),
    			N is N1+1.

%eliminate(L:list, N:natural number, Res:list)
%eliminate(i,i,o)
%eliminate([],_,[]).
%eliminate([],0,[]).
%
eliminate([],_,[]).
eliminate(R,0,R).
eliminate([H|T], N, R):- is_list(H),
    					 len(H,L),
    					 L mod 2 =:= 0,
    					 N1 is N-1,
    					 eliminate(T,N1,R).
eliminate([H|T],N,[H|R]):- atomic(H),
    					eliminate(T,N,R).
eliminate([H|T],N,[H|R]):-is_list(H),
    					  len(H,L),
    					  L mod 2 =\= 0,
    					 eliminate(T,N,R).
    