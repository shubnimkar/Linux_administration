#!/bin/bash

word=b

if [[ $word == "b" ]];then
	echo "the condition b is true"
elif [[ $word == "a" ]];then
	echo "the condition a is true"
else
	echo "the condition is not true"
fi
