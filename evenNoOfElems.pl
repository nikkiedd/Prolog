%Determine if a list has an even numbers of elements without counting the elements from the list
%even(L:list)
%(i)

even([]):-true.
even([_]):-false.
even([_|[_|T]]):-even(T).
