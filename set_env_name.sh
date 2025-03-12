#!/bin/bash

# Set the name for the new conda environment
if [ $# -eq 1 ]; then
	str=$(echo "$1" | sed 's/\ /_/g')
	echo "$(sed 's/CONDA_ENV=.*/CONDA_ENV='"$str"'/' Makefile)" >Makefile
	echo "$(sed 's/name: .*/name: '"$str"'/' environment.yml)" >environment.yml
	echo 'setEnvName.sh: environment name successfully changed.'
else
	echo 'setEnvName.sh: invalid argument number.'
	echo 'Syntax: ./setEnvName.sh "name"'
fi
