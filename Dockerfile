
FROM ubuntu:18.04

ENV produce produce
ENV serve serve

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y python python-pip python-dev build-essential libyaml-dev

# RUN apt-get -y install git

 RUN pip install mkdocs

RUN mkdir -p /tmp/mkdocs
RUN chmod +x /tmp/mkdocs

ADD mkdockerize.sh /tmp/mkdocs/mkdockerize.sh
RUN chmod +x /tmp/mkdocs/mkdockerize.sh

#CMD "/tmp/mkdocs/mkdockerize.sh"
ENTRYPOINT ["/tmp/mkdocs/mkdockerize.sh"]
