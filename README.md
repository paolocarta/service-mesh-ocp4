# RH Service Mesh installation

Self Link: TDB

## Installing the components
In order to install the Service Mesh follow these steps:
- Install the Jaeger, Elasticsearch and Kiali Operators in the openshift-operators project
- Install the Service Mesh Operator in the openshift-operators project
- Run the installation.sh script

## Sample App
In order to test the service mesh, deploy a sample application running:
```shell
demo-appinstallation.sh
```
## Sidecar Injection
For automatic sidecar injection this annotation must be specified in the pod spec within the deployment:
```yaml
      annotations:
        sidecar.istio.io/inject: "true"
```