%This predicate converts a given number(in base 2) to any desired base(between 2 and 9)

%convert(N:natural number, B:natural number from 2 to 9, R: natural number)
%convert(i,i,o)
convert(0,_,0).
convert(N,B,R):- D is N mod B,
                 N1 is N div B,
                 convert(N1,B,R1),
                 R is D + R1*10.
