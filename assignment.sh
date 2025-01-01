#Create two different containers for bash and ubuntu
docker container run -d -p 8080:80 --name ubuntucontainer ubuntu:14.04
docker container run -d -p 8085:80 --name centoscontainer centos:7

#Start bash in these containers
#For my ubuntu container
docker container exec -it ubuntucontainer bash
curl --version
#if not installed,
apt-get update && apt-get install curl
curl --version


#For my centos container
docker container exec -it centoscontainer bash
curl --version
#if not installed,
yum update curl
curl --version

#after, to delete these two containers forcefully, 
docker container rm -r ubuntucontainer centoscontainer


