%Replace all occurrences of an element from a list with another element(which is given).
%replace(N: element, E: element, L:list, R: List); N is the element to be replace
%replace(i,i,i,o)

replace(_,_,[],[]).
replace(N,E,[H|T],[H|TR]) :- H =\= N,
    			     replace(N,E,T,TR).
replace(N,E,[H|T],[E|TR]) :- H =:=N,
    			     replace(N,E,T,TR).
