oc new-project istio-system
oc create -n istio-system -f istio-installation.yaml

oc new-project istio-demo

oc project istio-system
oc create -n istio-system -f servicemeshmemberroll-default.yaml

# oc edit smmr -n istio-system