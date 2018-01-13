%Find all the subsets of a given list having an even/odd sum.
%subs(L:,I:boolean,R:list) - I=0 => the sum is even; I=1 => odd

subs([H|_],I,[H]):- H mod 2 =:= I.
%don't add the head
subs([_|T],I,S):-subs(T,I,S).
%add the head
subs([H|T],I,[H|S]):- H mod 2 =:= 0,	%adding an even numbers doesn't affect the sum's parity
               	      subs(T,I,S).
subs([H|T],I,[H|S]):- H mod 2 =:=1,		%adding an odd number changes the sum's parity
    		      I1 is (I-1) mod 2,
                      subs(T,I1,S).


allSubs(L,I,Res):-findall(R,subs(L,I,R),Res).