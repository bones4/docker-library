#!/bin/bash 

#build image
tag="2.2.0"
project="192.168.8.47:5000/kafka"

docker build -t $project:$tag .

if [ $? -eq 0 ];then
docker push $project:$tag
fi
