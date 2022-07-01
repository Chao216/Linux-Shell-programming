#!/bin/bash

if [ $1 -lt 60 ]
then
	echo "you failed your exam"
elif [ $1 -ge 60 ]
then
	echo "congratulations"
fi
