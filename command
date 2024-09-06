## node-exporter에 내용 추가
```
prometheus-node-exporter:
  hostRootFsMount:
    enabled: false
```

### 설치 방법 A
helm show values prometheus-community/kube-prometheus-stack > values.yaml
helm install kube-prom-stack prometheus-community/kube-prometheus-stack -f kube-prometheus-stack/values.yaml -n observability

### 설치 방법 B
helm pull prometheus-community/kube-prometheus-stack --untar
helm install kube-prometheus-stack -f ./values.yaml -n observability .


helm upgrade kube-prom-stack -n observability prometheus-community/kube-prometheus-stack -f ./valu
es.yaml --set hostRootFsMount.enabled=false

istio-grafana-dashboards


# Error
```
Error: failed to generate container "040367053cca7252fec7c6672a426c9b43868bae6baf54cb1f32923fba249028" spec: failed to generate spec: path "/" is mounted on "/" but it is not a shared or slave mount
```