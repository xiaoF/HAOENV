#!/bin/bash

sleep 1 

echo "docker stop mc" 
docker stop mc 

sleep 5 
echo "docker stop rabbitmq" 
docker stop rabbitmq 

sleep 5 
echo "docker stop es" 
docker stop es 

sleep 5 
echo "docker stop redis" 
docker stop redis 

sleep 5 ; \
echo "docker stop pouchdb" 
docker stop pouchdb 

sleep 5 ; \
echo "docker stop mongo" 
docker stop mongo 

echo "docker stop end!!!" 