/*11.
a. Replace all occurrences of an element from a list with another element e.
b. For a heterogeneous list, formed from integer numbers and list of numbers
, define a predicate to determine the maximum number of the list, and then 
to replace this value in sublists with the maximum value of sublist.
*/

%a
%replace(N: element, E: element, L:list, R: List)
%replace(i,i,i,o)
replace(_,_,[],[]).
replace(N,E,[H|T],[H|TR]) :- H =\= N,
    						 replace(N,E,T,TR).
replace(N,E,[H|T],[E|TR]) :- H =:=N,
    						 replace(N,E,T,TR).


%b
%max_wrap(L: list,M: integer) -wrapper function which initializes the maximum elem with the first integer in the list
%max_wrap(i, o) - maximum number in a heterogenous list. Works for homogenous lists too, of course
%max1(L: list, M: integer, Max: integer) 
%max1(i,i,o)
max_wrap([H|T], M) :- 	not(is_list(H)),
    					max1(T, H, M).
max_wrap([H|T], M) :- 	is_list(H),
    					max_wrap(T,M).
max1([], Max, Max).
max1([H|T], M, Max) :-  not(is_list(H)),
    					H > M,	%Max is a collector variable	
    			  		M1 is H,
    			  		max1(T, M1, Max).
max1([H|T], M, Max) :-  not(is_list(H)),
    					H =< M,
    				    max1(T,M,Max).
max1([H|T],M,Max)	:-  is_list(H),
    					max1(T,M,Max).

%replace the max value in sublist with the maximum value of sublist
big_wrap(L,R)			:-  replace_wrap(L,L,R).	%THIS IS THE MAIN FUNCTION
replace_wrap(L, C, R) 	:- 	max_wrap(L,M),
    			   			replace1(L,M,C,R). %M is the max elem in the big list
replace1([],_,R,R).
replace1([H|T], M, [H|TR], R)	:-	not(is_list(H)),
    								replace1(T,M,TR,R).
replace1([H|T], M, [H|TR], R)	:-	is_list(H),
    								max_wrap(H, M1), %M1 is the max elem in the sublist H
    								replace(M1, M, T, F),
    								TR is F,
    								replace1(T,M,TR,R).