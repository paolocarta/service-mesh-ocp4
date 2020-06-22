#!/bin/bash

export DEMO_APP_PROJECT_NAME=istio-paolocarta

oc new-project $DEMO_APP_PROJECT_NAME
sleep 2

oc apply -n $DEMO_APP_PROJECT_NAME -f control-plane/istio-installation.yaml

sleep 1

oc new-project $DEMO_APP_PROJECT_NAME-demo-app

sleep 1

sed "s/REPLACEME/$DEMO_APP_PROJECT_NAME-demo-app/g" control-plane/servicemeshmemberroll-default.input.yaml > control-plane/servicemeshmemberroll-default.yaml
oc apply -n $DEMO_APP_PROJECT_NAME -f control-plane/servicemeshmemberroll-default.yaml
