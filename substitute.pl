%Substitute in a list a value with all the elements of another list.
%sub(L:list, S:list, V:value, F:list)
%(i,i,i,o)

sub([V|T],S,V,[S|T]).
sub([H|T],S,V,[H|TF]):-H=\=V, sub(T,S,V,TF).