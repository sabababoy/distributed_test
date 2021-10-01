#!/bin/bash
kubectl apply -f ./Kubernetes/jmeter-influxdb-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-influxdb-svc.yaml
kubectl apply -f ./Kubernetes/jmeter-master-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-master-svc.yaml
kubectl apply -f ./Kubernetes/jmeter-slaves-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-grafana-deploy.yaml
kubectl apply -f ./Kubernetes/jmeter-grafana-svc.yaml