#!/bin/bash

sleep 1 

echo "docker start mongo" 
docker start mongo 

sleep 5 
echo "docker start rabbitmq" 
docker start rabbitmq 

sleep 5 
echo "docker start es" 
docker start es 

sleep 5 
echo "docker start redis" 
docker start redis 

sleep 5 
echo "docker start pouchdb" 
docker start pouchdb 

sleep 5 
echo "docker start mc" 
docker start mc 

echo "docker start end!!!" 