#!/bin/bash

# datagrid is in the same namespace for now
# oc new-project demo-datagrid

oc new-app --file datagrid/datagrid-7.3-template.yaml \
  -p APPLICATION_USER=test \
  -p APPLICATION_PASSWORD=test.1

sleep 1


if [ ! -d "istio-workshop" ] 
then
    echo "Directory istio-workshop DOES NOT exist, cloning repo" 
    git clone https://github.com/paolocarta/istio-workshop.git
fi

cd istio-workshop
git checkout ocp4-infinispan

oc project $DEMO_APP_PROJECT_NAME-demo-app

sleep 2

oc apply -f kubernetes-v1/permissive/

cd ..


