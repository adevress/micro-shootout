#!/bin/bash


NAME="bgq"

mkdir -p stats-${NAME}/

for n in {1,2,8,16,32,64}
do

for i in {1..10}
do

export OMP_NUM_THREADS=${n}
time srun -N 1  ./mandelbrot.bin 100000 > /dev/null  2> >(tee stats-${NAME}/mandelbrot_${n}_cores_${i}.log >&2)


done


done



