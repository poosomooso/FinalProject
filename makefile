all: arithmetic dot matrixmultiplication

arithmetic: arithmetic.v arithmetic.t.v
	iverilog -Wall -o aritmetic arithmetic.t.v

dot: dot.v dot.t.v arithmetic
	iverilog -Wall -o dot dot.t.v

matrixmultiplication: matrixmultiplication.v matrixmultiplication.t.v dot
	iverilog -Wall -o matmul matrixmultiplication.t.v