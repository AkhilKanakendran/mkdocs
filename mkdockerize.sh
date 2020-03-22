#!/bin/bash

function produce(){
	mkdocs new my-project  
	cd my-project
	mkdocs build --clean 
	cd /my-project/site
	tar -czvf stdin.tar.gz *
	echo "site/" >> .gitignore 
	#tar -tf stdin.tar.gz
}

function serve(){
	echo "serve function"
	cd /my-project
	tar xvzf /my-project/site/stdin.tar.gz 
	mkdocs serve  
}

inputArg=$1 

if [ "$inputArg" == "produce" ]; then
produce
fi

if [ "$inputArg" == "serve" ]; then
serve
fi

