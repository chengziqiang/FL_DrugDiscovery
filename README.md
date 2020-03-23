# Guide
---
We deployed a fedetated learning algorithm on [FATE](https://github.com/FederatedAI/FATE) that can be applied to drug data
-
##Install
*standalone
download docker image form https://drive.google.com/uc?id=1oErH8t4AHGjzDzhHANDGuTjbiLbgK2Su&export=download
and run fellowing code
```#Get code
$ tar -xvf fate-1.3.0.tar.gz
#Execute the command
$ cd fate-1.3.0
$ bash install_standalone_docker.sh

#Validation results
FATE $ CONTAINER_ID=`docker ps -aqf "name=fate_python"`
FATE $ docker exec -t -i ${CONTAINER_ID} bash
FATE $ bash ./federatedml/test/run_test.sh```
