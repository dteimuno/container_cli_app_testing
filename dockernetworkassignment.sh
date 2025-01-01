#Create container network
docker network create dtmnet
#creat two new containers
docker container run -d --name container1 --network-alias search elasticsearch:2
docker container run -d --name container2 --network-alias search elasticsearch:2

#DNS robin caching work
docker container run --rm --network dtmnet alpine nslookup search
docker container run --rm --network dtmnet centos curl -s search:9200

