%Calculate X^N in 2 ways.

%power1(X:integer, N:natural number, R:integer)
%power1(i,i,o)
power1(0,0,nope).
power1(_,0,1).
power1(X,N,R):-N1 is N-1,
    		  power1(X,N1,R1),
    		  R is R1*X.


%power2(X:integer, N:natural number, Acc:integer, R:integer)- with collector var(accumulator)
%power2(i,i,i,o)
power2(0,0,_,nope).	%edge case
power2(0,_,0,0).	%edge case

power2(_,0,R,R).
power2(X,N,Acc,R):-N1 is N-1,
    				Acc1 is Acc*X,
    				power2(X,N1,Acc1,R).

power2Wrap(X,N,R):-power2(X,N,1,R).
