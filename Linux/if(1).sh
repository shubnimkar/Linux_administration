#!/bin/bash

read -p "Enter a number:" a

	if [[ $a -eq 1 ]]; then 
	grep --colour=always -io "Introduction.*authentication"  pro1 | tr -s '[:blank:]'  '\n'

	elif [[ $a -eq 2 ]]; then 
		grep -io "Introduction.*scripting" pro1 | tr -s '[:blank:]' '\n'
	elif [[ $a -eq 3 ]]; then 
		grep -io "control.*connectivity" pro1 | tr -s '[:blank:]' '\n'
	else

		echo "input valid integer" 
	fi





