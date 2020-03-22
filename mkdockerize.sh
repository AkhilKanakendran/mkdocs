#!/bin/bash

# function to build the project
function produce(){
	mkdocs new my-project  
	cd my-project
	mkdocs build --clean 
	cd /my-project/site
	tar -czvf stdin.tar.gz *
	echo "site/" >> .gitignore 
	#tar -tf stdin.tar.gz
}

# function to output the project to the site
function serve(){
	echo "serve function"
	cd /my-project
	tar xvzf /my-project/site/stdin.tar.gz 
	mkdocs serve  
}

# Argument is stored in the inputArg variable
inputArg=$1 

#  logic to determine the function to be executed
if [ "$inputArg" == "produce" ]; then
produce
fi

if [ "$inputArg" == "serve" ]; then
serve
fi

