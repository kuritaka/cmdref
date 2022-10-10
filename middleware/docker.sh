#!/bin/bash
# docker cheat sheet
# Ref: https://cmdref.net/middleware/container/docker/index.html
exit

#===========================================
# Docker image Operation
#===========================================
docker search

docker pull centos:centos7

docker rmi centos



#===========================================
# Docker Container Operation
#===========================================
docker run -d -t --name centos_test centos
docker exec -it centos_test bash

docker run -d -t --name httpd1 -p 80:80 httpd


docker exec CONTAINERID ps -aux


docker inspect CONTAINER


## Network
brctl show

docker network ls # Check NETWORKNAME
docker network inspect NETWORKNAME




#===========================================
#Example
#===========================================
##Jenkins

docker pull jenkins/jenkins:lts
docker run -d -v `pwd`/jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts




