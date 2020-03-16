if [ ! -d "istio-workshop" ] 
then
    echo "Directory istio-workshop DOES NOT exist, cloning repo" 
    git clone https://github.com/paolocarta/istio-workshop.git
fi

cd istio-workshop
git checkout ocp4-infinispan

oc project istio-demo
oc apply -f kubernetes-v1/permissive/

cd ..
# oc apply -f kubernetes-v2/permissive/


