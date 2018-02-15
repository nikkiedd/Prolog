%Describe a DFA(Deterministic Finite Automaton) that checks whether a given natural number X contains an even number of zeroes in its binary representation.

%alphabet={0,1}
%states={S1,S2}
%start state={S1} 
%favorable(/accepted) state={S1}
%the transition function f:
%		f(S1,0,S2).
%		f(S1,1,S1).
%		f(S2,0,S1).
%		f(S2,1,S2).

%f(C: current state, D: input digit, T: new state) 
f("S1",0,"S2").
f("S2",0,"S1").
f(X,1,X).		%the same as f("S1",1,"S1"). & f("S2",1,"S2"). - just saving some space

start("S1").
final("S1").
%The DFA has been defined!


%Now let's process the input and put the DFA to work.
%fun(X: natural number, S: state- S1 or S2)
%fun(i,i)

fun(0,S):-!,final(S).
fun(X,S):- D is X mod 10,
    	 X1 is X div 10,
         f(S,D,NewS),
    	 fun(X1, NewS).

%toBinary(N: natural number, B: number in base 2)
%toBinary(i,o)
toBinary(0,0).
toBinary(X,B) :- X > 0 , 
               X1 is X div 2 , 
               toBinary(X1,B1),  
               R is X mod 2 , 
               B is R + B1 * 10.

%wrapper function 
fun(X):-start(StartState),
    toBinary(X, BinX),
    fun(BinX,StartState).
