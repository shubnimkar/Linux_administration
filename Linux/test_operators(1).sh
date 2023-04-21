#!/bin/bash

echo -e "Enter the name of the file: \c"
read file_name

#if [ -e(file existense)/-f(file search)/-d(dir search)/-b(block special-audio,video)/-c(charector special file-other)/-s(check empty or not)/-x(executable or not) ]

if [ -e $file_name ];then
	echo "$file_name is found."
 else
	echo "$file_name is not found."
fi
