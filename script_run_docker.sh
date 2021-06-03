#!/bin/bash

./script_stop_remove_containers.sh

# 3 rebuild
echo
echo ---- REBUILD IMAGE ----
echo
./script_build.sh
echo
echo ---- FINISH REBUILD IMAGE ----
echo



# run static apache
# http://127.0.0.1:8080/
echo ---- RUN CONTAINERE ON PORT 8080 ----
echo
docker run -p 8080:8080 -d --name myresume_container myresume_image

echo
echo
echo ---- YOU CAN TRY http://127.0.0.1:8080/ FOR SEE MyResume !! ----
echo
echo
