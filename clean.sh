#/bin/bash


#remova container
docker container rm -f `docker container ls -aq`

#remove image 

docker image prune -fa
