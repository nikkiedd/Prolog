%Keep only the prime elements of a list.

%isPrime(X:int)
%isPrime(i)
isPrime(1):- !,false.
isPrime(0):-!,false.
isPrime(X):- isPrime(X,2).
isPrime(X,D):- X mod D =:= 0, false. % has one divisor => not prime
isPrime(X,D):-  D >= X. % exhausted all the possible divisors => it is prime
isPrime(X,D):-  D < X,	
    			X mod D =\= 0,
    			D1 is D+1,
    		    isPrime(X,D1).	% not a divisor, keep searching

%primeElems(L:list, R:list)
%primeElems(i,o)
primeElems([],[]).
primeElems([H|T],[H|T1]) :- isPrime(H),
    						primeElems(T,T1).
primeElems([H|T],R) :-not(isPrime(H)),
    				  primeElems(T,R).