oc apply -f prerequisites/elasticsearch.yaml

sleep 2

oc apply -f prerequisites/kiali.yaml

sleep 1

oc apply -f prerequisites/jaeger.yaml
