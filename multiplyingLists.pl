% Given a list with the digits of a natural number, multiply that number with a given natural
% number and return the result in a similar list.
% e.g: [2,4,3] * 5 = [1,2,1,5]

%reverse(L:list, R:list)
%reverse(i,o)
reverse(L,R):-reverse(L,R,[]).
reverse([],R,R).
reverse([H|T],R,Acc) :- reverse(T,R,[H|Acc]).


%mul(L:list, E:int, R:list)- MAIN function
%mul(i,i,o)
mul(L,E,R):-reverse(L,Rev),	
    		mul(Rev,E,X, 0),
    		reverse(X,R).	%it's way easier to work with the reversed list


mul([],_,_,C):-C=:=0.
mul([],_,[C],C):-C=\=0.
mul([H|T],E,[W|T1], C):- W is (H*E+C) mod 10,
    					  C1 is (H*E+C) div 10,
    					  mul(T,E,T1,C1).
    					
