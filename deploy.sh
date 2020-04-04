#!/bin/bash
if [[ `pwd` == *"fate/FL_DrugDiscovery"]]
then 
    /bin/cp -rf ./federatedml ../
    /bin/cp -rf ./FL_DrugDiscovery ../examples/federatedml-1.x-examples
    /bin/cp -rf ./solubility ../examples/data
    echo "success"
else 
    echo "check current directory"