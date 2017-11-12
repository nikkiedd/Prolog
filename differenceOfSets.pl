%Determine the difference of two sets 
%diff(S1:set, S2:set, D:set) - S1\S2 = D
%diff(i,i,o)

diff([],_,[]).
diff([H|T], S2, [H|T2]) :- not(member(H,S2)), 
    					   diff(T, S2, T2).
diff([H|T], S2, D) :- member(H,S2),
    				  diff(T,S2,D).