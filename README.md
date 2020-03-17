# RH Service Mesh installation

Self Link: http://bit.ly/service-mesh-ocp

## Installing the components

In order to install the Service Mesh follow these steps:

- Run the script 1-all-operators-installation.sh
    - This will install the Jaeger, Elasticsearch Kiali Operators
    - This will also install the Service Mesh Operator
    - Wait a few seconds till the operators are up and running

- Run the script 2-control-plane-installation.sh
    - This will install the Istio Control plane in the namespace istio-system
    - For the installation to be ready it might take about a minute.


## Sample App
In order to test the service mesh, deploy a sample application running:
```shell
3-optional-demo-app-installation
```

URL of the sample app: https://github.com/paolocarta/istio-workshop.git

## Sidecar Injection
For automatic sidecar injection this annotation must be specified in the pod spec within the deployment:
```yaml
      annotations:
        sidecar.istio.io/inject: "true"
```

## Istio Steps for the sample app

After installing the demo-app with the demo-app-installation.sh script go to:
- istio-workshop/istio-rules

There you can find all steps.

A description of all steps can be found in this Google Doc: http://bit.ly/istiolab-ocp-gdoc
