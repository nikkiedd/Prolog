%Find the list of subsets of length N formed using the elements of a given list.
%subsets(L:list ,N:natural number, R:list)
%subsets(i,i,o)
subsets([],0,[]).
subsets([H|T],N,[H|Rest]):- N1 is N-1,
    						subsets(T,N1,Rest),
    						not(member(H,Rest)). %to make sure there will be no duplicates, because we need a SET
subsets([_|T],H,R):- subsets(T,H,R).


subsetsWrap(L,N,Res):-findall(R,subsets(L,N,R),Res).