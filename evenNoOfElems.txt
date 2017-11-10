%Determine if a list has an even numbers of elements without counting the elements from the list
%even(L:list,R:0-if even no of elems, 1-otherwise)
%(i,o)

even([],0).
even([_],1).
even([_|[_|T]],R):-even(T,R). 