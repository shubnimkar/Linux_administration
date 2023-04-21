#!/bin/bash

echo -e "Enter the file name : \c"
 read file_name

cat $file_name | while read p
	do
		echo $p
	done < $file_name
