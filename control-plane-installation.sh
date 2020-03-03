oc new-project istio-system
oc create -n istio-system -f istio-installation.yaml

sleep 1

oc new-project istio-demo

sleep 1

oc create -n istio-system -f servicemeshmemberroll-default.yaml

# oc edit smmr -n istio-system