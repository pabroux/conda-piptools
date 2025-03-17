#!/bin/bash

# Set the name for the new conda environment
if [ $# -eq 1 ]; then
	str=$(echo "$1" | sed 's/\ /_/g')
	echo "$(sed 's/CONDA_ENV=.*/CONDA_ENV='"$str"'/' Makefile)" >Makefile
	echo "$(sed 's/name: .*/name: '"$str"'/' environment.yml)" >environment.yml
	echo 'set_env_name.sh: environment name successfully changed.'
else
	echo 'set_env_name.sh: invalid argument number.'
	echo 'Syntax: ./set_env_name.sh "name"'
fi
