#!/usr/bin/env bash
num=$1 
dir=$2

tar xfz NthPrime.tgz -C $dir

cd $dir
cd NthPrime

gcc -Wall nth_prime.h main.c nth_prime.c -o NthPrime
#wall is an abb. for write to all
#-o echoes all the commands before executing

./NthPrime $num