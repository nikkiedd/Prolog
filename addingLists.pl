%reverse ALREADY DEFINED :)

%Determine the sum of two numbers written in list representation.
%e.g.: [9,1,0] + [2,3,4] = [1,1,4,4]

%mySum(A:natural number, B:natural number, R:natural number)
%mySum(i,i,o)
mySum(A,B,R):-	reverse(A,A1),
    		reverse(B,B1),
    		mySum(A1,B1,X,0),	%the last parameter represents the carry digit
    		reverse(X,R).
mySum([],[],[C],C):-C=\=0.
mySum([],[],[],C):-C=:=0.
mySum([H1|T1],[],[W|T3],C):-	W is (H1+C) mod 10,
    				C1 is (H1+C) div 10,
    				ySum(T1,[],T3,C1).
mySum([],[H2|T2],[W|T3],C):-	W is (H2+C) mod 10,
    				C1 is (H2+C) div 10,
    				mySum([],T2,T3,C1).
mySum([H1|T1],[H2|T2],[W|T3],C):-W is (H1+H2+C) mod 10,
    				C1 is (H1+H2+C) div 10,
    				mySum(T1,T2,T3,C1).