## hello-app

* name: app-hello
* port: 9070

### Deploy:
```
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-hello/main/manifests/Deployment.yaml
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-hello/main/manifests/Service.yaml
```