#!/bin/bash

#docker build  .
#docker container run --publish 8000:8080 --detach --name bb mkdocsimage:1.0

function produce(){
	echo "produce function"
	mkdocs new my-project
	cd /mkdocs  
	mkdocs build --clean 
	cd /mkdocs/site
	tar -czvf stdin.tar.gz *
	echo "site/" >> .gitignore 
	tar -tf stdin.tar.gz
}

function serve(){
	echo "serve function"
	cd /mkdocs/site
	#tar xvzf stdin.tar.gz > 
	mkdocs serve -a 63.34.11.133:8000	
}

a=$1 
echo "input is " $a

if [ "$a" == "produce" ]; then
echo "inside produce if loop"
produce
fi

if [ " $a" == "serve" ]; then
echo "inside server if loop"
serve
fi

#######   docker container run --publish 8000:8080 --name bb mkdocsimage:1.0

#docker run  -v /home/ubuntu/test:/root/my-project  -name tester1  mkdocsimage:latest
