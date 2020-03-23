# FATE Stand-alone Deployment Guide
---
```#Get code
FATE $ wget https://webank-ai-1251170195.cos.ap-guangzhou.myqcloud.com/docker_standalone-fate-1.3.0.tar.gz
FATE $tar -xvf docker_standalone-fate-1.3.0.tar.gz

#Execute the command
FATE $ cd docker_standalone-fate-1.3.0
FATE $ bash install_standalone_docker.sh

#Validation results
FATE $ CONTAINER_ID=`docker ps -aqf "name=fate_python"`
FATE $ docker exec -t -i ${CONTAINER_ID} bash
FATE $ bash ./federatedml/test/run_test.sh```
