helm template --namespace openalgo openalgo-release ./charts/openalgo -f myvalues.yaml > hydrated.yaml
kubectl --namespace openalgo apply -f hydrated.yaml

