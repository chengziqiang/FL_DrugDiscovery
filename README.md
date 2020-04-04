# FL DrugDiscovery Deployment Guide
We deployed a model for predicting drug solubility on [FATE](https://github.com/FederatedAI/FATE) 
## Quick Start
### 1. Install FATE
FATE can be installed on Linux or Mac. Now, FATE can support：
* Native installation: standalone and cluster deployments;
* KubeFATE installation:
    * Multipal parties deployment by docker-compose, which for devolopment and test purpose;
    * Cluster (multi-node) deployment by Kubernetes

#### Native installation:
Software environment :jdk1.8+、Python3.6、python virtualenv、mysql5.6+、redis-5.0.2

##### Standalone
FATE provides Standalone runtime architecture for developers. It can help developers quickly test FATE. Standalone support two types of deployment: Docker version and Manual version. Please refer to Standalone deployment guide: [standalone-deploy](https://github.com/FederatedAI/FATE/tree/master/standalone-deploy)

##### Cluster
FATE also provides a distributed runtime architecture for Big Data scenario. Migration from standalone to cluster requires configuration change only. No algorithm change is needed.

To deploy FATE on a cluster, please refer to cluster deployment guide: [cluster-deploy](https://github.com/FederatedAI/FATE/tree/master/cluster-deploy) .

##### Running Tests

A script to run all the unittests has been provided in ./federatedml/test folder.

Once FATE is installed, tests can be run using:

`sh ./federatedml/test/run_test.sh`

All the unittests shall pass if FATE is installed properly.

### 2. Deploy FL_DrugDiscovery Model 
#### Deploy model
```
$ cd /${FATE path}    
$ git https://github.com/chengziqiang/FL_DrugDiscovery
$ sh ./deploy.sh
```
#### Upload data and train model
```
$ cd /${FATE path}/examples/federatedml-1.x-examples/FL_DrugDiscovery
$ sh ./upload_data.sh
$ python /${FATE path}/fate_flow/fate_flow_client.py -f submit_job -d dsl.json -c runtime.json
```
you can check running status of model at [FATEboard](https://fate.fedai.org/fateboard/) that is a suite of visualization tool of FATE
#### Test model

model saved  in `/fate/model/${job ID}/`
