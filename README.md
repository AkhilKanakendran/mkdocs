# mkdocs
mkdocs produce and serve using docker.

DockerFile and the bash script mkdockerize.sh can be found at the root directory

#Build Docker Image

docker image build -t mkdocsimage:1.0 .

#Run Docker Container with argument as produce

docker run -v /mkdocs:/my-project  mkdocsimage:1.0 produce

#Run Docker Container with argument as serve

docker run -p 8000:8000 -v /mkdocs:/my-project mkdocsimage:1.0 serve
