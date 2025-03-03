#!/bin/bash
awk -F ',' '{REG=$2; for (i = 6; i <= 33; i++) {  M[REG][i]=M[REG][i]+$i}} END {for (k in M) { printf("%s\t", k); for (i = 6; i <= 33; i++){printf "%d\t", M[k][i]}; printf M[k][22]/(M[k][15]+1);printf"\n"}}' | sort -n -t "$(printf "\t")" -k 30
