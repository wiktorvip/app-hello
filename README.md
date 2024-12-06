## hello-app

* name: app-hello
* port: 9070

### Deploy:
```
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-hello/main/manifests/Deployment.yaml
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-hello/main/manifests/Service.yaml
```

### Helm Deploy:
```
helm install app-hello oci://ghcr.io/wiktorvip/app-hello/charts/app-hello --create-namespace -n app-hello
```
