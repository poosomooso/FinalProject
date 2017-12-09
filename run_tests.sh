#!/bin/bash

make

echo "Running all module tests:"

cat mem_test_data.dat > matrix_mem.dat
echo "Running data memory tests..."
./data_mem
echo "Running arithmetic tests..."
./arithmetic
echo "Running dot tests..."
./dot
echo "Running matmul tests..."
./matmul