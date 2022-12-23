#!/bin/bash
 
  
image="gudditi.jfrog.io/docker/gudditi"  
  
#get timestamp for the tag  
timestamp=$(date +%Y%m%d%H%M%S)  
  
tag=$image:$timestamp  
latest=$image:latest  
  
#build image  
sudo docker build -t $tag . 

