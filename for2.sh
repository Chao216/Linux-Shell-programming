#!/bin/bash

sum=0

for ((i=0; i <= $1; i++))
do
	sum=$(($sum + $i))
	echo "sum is now @ $sum"
done
