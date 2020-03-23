# FATE Stand-alone Deployment Guide
---
```#Get code
https://drive.google.com/uc?id=1oErH8t4AHGjzDzhHANDGuTjbiLbgK2Su&export=download
FATE $tar -xvf fate-1.3.0.tar.gz

#Execute the command
FATE $ cd fate-1.3.0
FATE $ bash install_standalone_docker.sh

#Validation results
FATE $ CONTAINER_ID=`docker ps -aqf "name=fate_python"`
FATE $ docker exec -t -i ${CONTAINER_ID} bash
FATE $ bash ./federatedml/test/run_test.sh```
