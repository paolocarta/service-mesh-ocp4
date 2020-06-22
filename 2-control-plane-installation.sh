#!/bin/bash

oc new-project istio-system
sleep 2

oc apply -n istio-system -f control-plane/istio-installation.yaml

sleep 1

oc new-project istio-demo-app

sleep 1

oc apply -n istio-system -f control-plane/servicemeshmemberroll-default.yaml
