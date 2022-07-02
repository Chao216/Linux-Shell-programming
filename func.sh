#!/bin/bash

read -p "enter the first nnumber" num1

read -p "enter the second number" num2

function myfunc(){
	sum=$(($num1+$num2))
	echo $sum
	return $sum

}

myfunc

echo $sum
