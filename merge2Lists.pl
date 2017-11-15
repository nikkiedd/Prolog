%Merge two lists sorted ascendingly(do not remove the duplicates).

%merge(A:list, B:list, C:list)
%merge(i,i,o)

merge([],[],[]).
merge([],L,L).
merge(L,[],L).
merge([H1|T1],[H2|T2],[H1|T3]):- H1=<H2,
    							 merge(T1,[H2|T2],T3).
merge([H1|T1],[H2|T2],[H2|T3]):- H1>H2,
    							 merge([H1|T1],T2,T3).
