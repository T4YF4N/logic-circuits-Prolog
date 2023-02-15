% This file contains the basic logical gates and their truth tables. It includes the XNOR, XOR, NAND, AND, NOR, OR, and NOT/INV gates. The truth table lists the inputs and corresponding outputs for each gate.

xnor(0,0,1).
xnor(0,1,0).
xnor(1,0,0).
xnor(1,1,1).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

nand(0,0,1).
nand(0,1,1).
nand(1,0,1).
nand(1,1,0).

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

nor(0,0,1).
nor(0,1,0).
nor(1,0,0).
nor(1,1,0).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

not(0,1).
not(1,0).

inv(0,1).
inv(1,0).
