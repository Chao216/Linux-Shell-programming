#!/bin/bash

A=$1
B=$2

if [ $A -eq $B ] 
then echo two numbers are equal
elif [ $A -gt $B ] 
then echo first number is bigger
elif [ $A -lt $B ]
then echo second number is bigger
fi

