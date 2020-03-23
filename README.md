## Install
#### standalone

download form
 https://drive.google.com/uc?id=1oErH8t4AHGjzDzhHANDGuTjbiLbgK2Su&export=download
and run following code
```
#Get code
$ tar -xvf fate-1.3.0.tar.gz
#Execute the command
$ cd fate-1.3.0
$ bash install_standalone_docker.sh

#Validation results
FATE $ CONTAINER_ID=`docker ps -aqf "name=fate_python"`
FATE $ docker exec -t -i ${CONTAINER_ID} bash
FATE $ bash ./federatedml/test/run_test.sh
```
#### cluster
## Start
```
cd /fate/examples/federatedml-1.x-examples/hetero_nn
python upload_data.py
python /fate/fate_flow/fate_flow_client.py -f submit_job -d dsl.json -c runtime.json
```
model saved  in /fate/model
