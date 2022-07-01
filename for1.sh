#!/bin/bash

for i in $*
do
	echo $i
done

echo ========================================

for j in $@
do
	echo $j
done

echo ========================================

for k in "$*"
do
	echo $k
done

echo ========================================

for l in "$@"
do
	echo $l
done
