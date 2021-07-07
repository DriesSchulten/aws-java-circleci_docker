FROM cimg/openjdk:11.0

MAINTAINER Dries Schulten

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /
RUN sudo apt-get update && sudo apt-get install -y python3-pip && \
		sudo pip3 install -q awscli --upgrade && \
 		sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
 		aws --version
