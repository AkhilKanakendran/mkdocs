#!/bin/bash

cd / 
ls -lrt
echo "ehello" 

#mkdir  my-project
#chmod 2775 my-project

#docker build  .
#docker container run --publish 8000:8080 --detach --name bb mkdocsimage:1.0

function produce(){
	echo "produce function"
}

function serve(){
	echo "serve function"
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
