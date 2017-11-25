%hanoi(N: natural number, From: string,To: string,Aux: string)
%hanoi(i,i,i,i) - this predicate helps us solve the Towers of Hanoi problem step by step

hanoi(N,From,To,_):- N=:=1,	%if there's only one disk, we move it from the starting to the destination rod
    				 write("Moving top disk from "),
    				 write(From),
    				 write(" to "),
    				 write(To),
    				 nl.
hanoi(N,From,To,Aux):- 	N=\=1,
    				   hanoi(N-1,From,Aux,To),	%move the top n-1 disks from the start rod to the auxiliar one
    				   hanoi(1,From,To,Aux),	%move the last( and largest) disk from the start rod to the destination one
    				   hanoi(N-1,Aux,To,From).	%move all the disks from the auxiliar rod to the destination one
