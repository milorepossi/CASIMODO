#!/bin/bash

min_temp=300
max_temp=441
number_of_temp=48

for ((i=0; i<number_of_temp; i++)); do
    int_T=$((min_temp + i * (max_temp - min_temp) / (number_of_temp - 1)))
    echo "Submitting job for T = ${int_T} K"
    sbatch submit_CASIMODO_one_T.sh "${int_T}"
done