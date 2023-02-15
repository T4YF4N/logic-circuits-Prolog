:-include('base-gates.pl').

defined_circuits:-
    writeln('The available logical circuits are:'),
    writeln('`circuit_one.`, `circuit_two.`, `circuit_three.`, `circuit_four.`, `circuit_five.`, `circuit_six.`, `circuit_seven.`, `circuit_eight.`'),
    writeln('\nYou can use these circuits to test and verify the functionality of different logical functions.\n\nPlease refer to the documentation of specified circuit for more information on how to use it.').

circuit_one(A,B,C,Output):-not(B,X),and(A,X,U),and(B,C,V),or(U,V,W),not(W,Output).

circuit_one:-write('
Logical Circuit #1
Verification of the circuit using the function circuit_one(A,B,C,Output)
A, B, C - inputs
Output - output

[A]--------|
           AND----|
[B]---NOT--|      OR---NOT---<OUTPUT>
    |          |--|
    |--|       |
       AND-----|
[C]----|

There is an alternative option for verifying the above logical circuit using the function
output(not(or(and(in(A),not(in(B))),and(in(B),in(C)))), Output).
').

circuit_two(A,B,C,Output):-and(A,B,X),not(C,Y),or(X,Y,Z),not(Z,Output).

circuit_two:-write('
Logical Circuit #2
Verification of the circuit using the function circuit_two(A,B,C,Output)
A, B, C - inputs
Output - output

[A]----|
       AND--|
[B]----|    |
            OR---NOT---<OUTPUT>
            |
[C]---NOT---|

There is an alternative option for verifying the above logical circuit using the function
output(not(or(and(in(A),in(B)),not(in(C)))), Output).
').

circuit_three(A,B,C,D,Output):-and(A,B,X),and(C,D,Y),nand(X,Y,Output).

circuit_three:-write('
Logical Circuit #3
Verification of the circuit using the function circuit_three(A,B,C,D,Output)
A, B, C, D - inputs
Output - output

[A]----|
       AND--|
[B]----|    |
            NAND---<OUTPUT>
[C]----|    |
       AND--|
[D]----|

There is an alternative option for verifying the above logical circuit using the function
output(nand(and(in(A), in(B)), and(in(C), in(D))), Output).
').

circuit_four(A,B,C,D,Output):-not(A,X),not(B,Y),or(X,Y,Z),and(C,D,W),xor(Z,W,Output).

circuit_four:-write('
Logical Circuit #4
Verification of the circuit using the function circuit_four(A,B,C,D,Output)
A, B, C, D - inputs
Output - output

[A]---NOT---|
            |
            OR---|
            |    |
[B]---NOT---|    |
                 XOR---<OUTPUT>
[C]----|         |
       |         |
       AND-------|
       |
[D]----|

There is an alternative option for verifying the above logical circuit using the function
output(xor(or(not(in(A)), not(in(B))), and(in(C), in(D))), Output).
').

circuit_five(A,B,C,D,E,Output):-xnor(A,B,X),xor(C,D,Y),nand(X,Y,Z),not(E, W),nor(Z,W,Output).

circuit_five:-write('
Logical Circuit #5
Verification of the circuit using the function circuit_five(A,B,C,D,E,Output)
A, B, C, D, E - inputs
Output - output

[A]---|
      |
      XNOR--|
      |     |
[B]---|     |
            |
            NAND---|
            |      |
[C]---|     |      |
      |     |      |
      XOR---|      NOR---<OUTPUT>
      |            |
[D]---|            |
                   |
[E]------NOT-------|

There is an alternative option for verifying the above logical circuit using the function
output(nor(nand(xnor(in(A), in(B)), xor(in(C), in(D))), not(in(E))), Output).
').

circuit_six(A,B,C,D,E,Output):-nor(A,B,X),not(C,Y),and(D,E,Z),nand(X,Y,Q),xnor(Q,Z,Output).

circuit_six:-write('
Logical Circuit #6
Verification of the circuit using the function circuit_six(A,B,C,D,E,Output)
A, B, C, D, E - inputs
Output - output

[A]---|
      |
      NOR---|
      |     |
[B]---|     NAND--|
            |     |
            |     |
[C]--- NOT--|     |
                  XNOR---<OUTPUT>
                  |
[D]---|           |
      |           |
      AND---------|
      |
[E]---|

There is an alternative option for verifying the above logical circuit using the function
output(xnor(nand(nor(in(A), in(B)), not(in(C))), and(in(D), in(E))), Output).
').

circuit_seven(A,B,C,D,Output):-not(A,S),and(A,B,T),nand(B,C,W),not(D,Q),xor(S,T,Z),nor(W,Q,Y),xor(Z,Y,Output).

circuit_seven:-write('
Logical Circuit #7
Verification of the circuit using the function circuit_seven(A,B,C,D,Output)
A, B, C, D - inputs
Output - output

[A]------NOT--|
     |       XOR-----|
    AND-------|      |
     |               |
[B]----|            XOR---<OUTPUT>
       NAND-----|    |
[C]----|        |    |
	         NOR--|
                |
[D]---NOT-------|

There is an alternative option for verifying the above logical circuit using the function
output(xor(xor(not(in(A)),and(in(A), in(B))),nor(nand(in(B), in(C)), not(in(D)))), Output).
').

circuit_eight(A,B,C,D,E,F,Output):-and(A,B,X),nand(C,D,Y),or(E,F,Z),nor(Y,Z,W),xnor(X,W, Output).

circuit_eight:-write('
Logical Circuit #8
Verification of the circuit using the function circuit_eight(A,B,C,D,E,F,Output)
A, B, C, D - inputs
Output - output

[A]--|
     AND---------|
[B]--|           |
                 |
[C]--|           XNOR---<OUTPUT>
     NAND--|     |
[D]--|     |     |
           NOR---|
[E]--|     |
     OR----|
[F]--|

There is an alternative option for verifying the above logical circuit using the function
output(xnor(and(in(A), in(B)), nor(nand(in(C), in(D)),or(in(E),in(F)))), Output).
').
