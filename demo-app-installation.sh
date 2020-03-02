git clone https://github.com/paolocarta/istio-workshop.git
cd istio-workshop
git checkout ocp4

oc project istio-demo
oc apply -f kubernetes-v1/permissive/
# oc apply -f kubernetes-v2/permissive/


