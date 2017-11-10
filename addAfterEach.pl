%Add the number 1 after every even number in a list
%add(L:list,F:list)
%add(i,o)

add([],[]).
add([H|T],[H,1|T1]):- H mod 2=:=0,
    				add(T,T1).
add([H|T],[H|T1]):- H mod 2=\=0,
    				add(T,T1).