#!/bin/bash
kubectl apply -f ./Kubernetes/jmeter-influxdb-configmap.yaml
kubectl apply -f ./Kubernetes/jmeter-influxdb-statefulset.yaml
kubectl apply -f ./Kubernetes/jmeter-influxdb-svc.yaml
kubectl apply -f ./Kubernetes/jmeter-slaves-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-slaves-svc.yaml
kubectl apply -f ./Kubernetes/jmeter-grafana-database-configmap.yaml
kubectl apply -f ./Kubernetes/jmeter-grafana-dashboards-configmap.yaml
kubectl apply -f ./Kubernetes/jmeter-grafana-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-grafana-svc.yaml
kubectl apply -f ./Kubernetes/jmeter-master-configmap.yaml
kubectl apply -f ./Kubernetes/jmeter-master-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-master-svc.yaml
