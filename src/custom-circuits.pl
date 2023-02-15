custom_circuits:-
    writeln('The output function can be used to test and verify the functionality of various logical functions. It accepts nested logical gates with known or unknown values as arguments and returns calculated output. If the user wants to pass unknown values as arguments, they must use the in() predicate. Otherwise, they should simply pass a numerical value.'),
    writeln('\nFor example, for the following logical circuit:

        [A]----|
               AND--|
        [B]----|    |
                    OR---NOT---<OUTPUT>
                    |
        [C]---NOT---|
    '),
    writeln('\nThe user can test and verify the functionality of the circuit by either passing known values to the output function, such as: output(not(or(and(1,0),not(1))), Output), or by passing unknown values using the in() predicate: output(not(or(and(in(A),in(B)),not(in(C)))), Output).').

%XNOR Gate

%Return TRUE if and only if Input1 and Input2 are equal
output(xnor(In1, In2), 1) :-
    output(In1, Out1), output(In2, Out2), Out1 == Out2, ((atomic(In1),atomic(In2)) -> !; true).

%Return FALSE if and only if Input1 and Input2 are not equal
output(xnor(In1, In2), 0) :-
    output(In1, Out1), output(In2, Out2), Out1 \== Out2, ((atomic(In1),atomic(In2)) -> !; true).

%XOR Gate

%Return TRUE if and only if Input1 and Input2 are not equal
output(xor(In1, In2), 1) :-
    output(In1, Out1), output(In2, Out2), Out1 \== Out2, ((atomic(In1),atomic(In2)) -> !; true).

%Return FALSE if and only if Input1 and Input2 are equal
output(xor(In1, In2), 0) :-
    output(In1, Out1), output(In2, Out2), Out1 == Out2, ((atomic(In1),atomic(In2)) -> !; true).

%NAND Gate

%Return TRUE if and only if Input1 and Input2 are not both "1"
output(nand(In1, In2), 1) :-
    (output(In1, 0); output(In2, 0)), ((atomic(In1),atomic(In2)) -> !; true).

%Return FALSE if and only if Input1 and Input2 are both "1"
output(nand(In1, In2), 0) :-
    output(In1, 1), output(In2, 1), ((atomic(In1),atomic(In2)) -> !; true).

%NOR Gate

%Return TRUE if and only if Input1 and Input2 are both "0"
output(nor(In1, In2), 1) :-
    output(In1, 0), output(In2, 0), ((atomic(In1),atomic(In2)) -> !; true).

%Return FALSE if and only if Input1 or Input2 is not "0"
output(nor(In1, In2), 0) :-
    (output(In1, 1); output(In2, 1)), ((atomic(In1),atomic(In2)) -> !; true).

%AND Gate

%Return TRUE if and only if Input1 and Input2 are both "1"
output(and(In1, In2), 1) :-
    (output(In1,1), output(In2, 1)), ((atomic(In1),atomic(In2)) -> !; true).

%Return FALSE if and only if Input1 or Input2 is not "1"
output(and(In1, In2), 0) :-
    (output(In1, 0); output(In2, 0)), ((atomic(In1),atomic(In2)) -> !; true).

%OR Gate

%Return TRUE if and only if Input1 or Input2 is not "0"
output(or(In1,In2),1) :-
    (output(In1,1); output(In2,1)), ((atomic(In1),atomic(In2)) -> !; true).

%Return FALSE if and only if Input1 and Input2 are both "0"
output(or(In1,In2),0) :-
    output(In1,0), output(In2,0), ((atomic(In1),atomic(In2)) -> !; true).

%Interver (NOT) Gate

%Return TRUE if and only if Input1 is "0"
output(not(In),1) :-
    output(In,0), (atomic(In) -> !; true).

%Return FALSE if and only if Input1 is "1"
output(not(In),0) :-
    output(In,1), (atomic(In) -> !; true).

%Buffer Gate

%Return the input value
output(0,0).
output(1,1).

%Return the input value for non atomic value
output(in(0),0).
output(in(1),1).
