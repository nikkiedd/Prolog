%generate(L:list, Sum:int, R:list)
%generate(i,i,o)

generate([Sum|_],Sum,[Sum]).
generate([First|Rest],Sum,[First|X]):-Sum is Sum1-First,
                                        generate(Rest,Sum1,X).
generate([_|Rest],Sum,R):-generate(Rest,Sum,R).

%generateAll(L:list, Sum:int, Res:list<of lists>)
generateAll(L,Sum,Res):-findall(R,generate(L,Sum,R),Res).