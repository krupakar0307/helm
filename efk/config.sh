#!/bin/sh
helm repo add elastic https://helm.elastic.co
helm repo update
helm install elasticsearch elastic/elasticsearch -n fluentd --create-namespace

helm install kibana elastic/kibana -n fluentd 
helm install fluent fluent/fluentd -f fluentd/values.yaml 
