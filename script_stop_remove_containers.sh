#!/bin/bash

echo
echo ---- KILL AND REMOVE stoped container if exist ----
echo
# 1 kill 
docker kill myresume_container
# 2 kill stopped
docker rm $(docker ps -a -q)
