#!/bin/bash

# oc new-project 3scale

# oc create secret docker-registry threescale-registry-auth \
#   --docker-server=registry.redhat.io \
#   --docker-username="" \
#   --docker-password=""

# oc new-app --file amp.yml --param WILDCARD_DOMAIN=apps.cluster-d976.d976.sandbox1717.opentlc.com

# ---

SERVICE=$1
URL=$2
TOKEN=$3

oc exec -n istio-system $(oc get po -n istio-system -o jsonpath='{.items[?(@.metadata.labels.app=="3scale-istio-adapter")].metadata.name}') \
-it -- ./3scale-config-gen --url ${URL} --service=${SERVICE} --token ${TOKEN} --name="istio-api" -n istio-system | oc apply -f


