# RH Service Mesh installation

Self Link: http://bit.ly/service-mesh-ocp

## Installing the components
In order to install the Service Mesh follow these steps:
- Install the Jaeger, Elasticsearch and Kiali Operators with the GUI in the openshift-operators project
- Install the Service Mesh Operator with the GUI in the openshift-operators project
- Run the installation.sh script

## Sample App
In order to test the service mesh, deploy a sample application running:
```shell
demo-app-installation.sh
```

URL of the sample app: https://github.com/paolocarta/istio-workshop.git

## Sidecar Injection
For automatic sidecar injection this annotation must be specified in the pod spec within the deployment:
```yaml
      annotations:
        sidecar.istio.io/inject: "true"
```

## Istio Steps for the sample app

After installing the demo-app with the demo-app-installation.sh script:
- Go to istio-workshop/istio-rules

There you can find all steps