# Docker Compose for Redis Cluster #

Create a minimal Redis 6 cluster in docker containers with docker-compose.
Cluster has 3 nodes and 3 replica
Cluster data is persisted upon docker stop  
Don't use in production, for development only !


## Require ##
docker and docker-compose  
https://docs.docker.com/get-docker/  
https://docs.docker.com/compose/install/

## How to start ##

1. download this project :  
`git clone `
2. build docker stack  
`cd docker-redis-cluster && docker-compose build`
3. launch  
`docker-compose up` 
OR in demonized mode:  
`docker-compose up -d`
4. Stop  
`docker-compose down`

## How to access redis cluster node ##
Each cluster node is isolated on a container on custom network  
To lauch redis-cli on master redis1 (for exemple):  
`docker run -it --network redis-network --rm redis:6-alpine redis-cli -h redis1`
