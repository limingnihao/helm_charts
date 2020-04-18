source ~/.bash_profile    

# es
helm upgrade --install --values values.yaml es tgz/elasticsearch-7.6.0.tgz

# kibana
helm upgrade --install ka tgz/kibana-7.6.0.tgz

# cerebro
kubectl apply -f ../cerebro/cerebro.yaml

# ingress
kubectl apply -f ingress/ingress-elasticsearch.yaml

kubectl get pods