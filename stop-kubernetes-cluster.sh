#!/bin/bash

kubectl delete deploy  jmeter-grafana jmeter-master jmeter-slaves
kubectl delete service jmeter-grafana-svc jmeter-influxdb-svc jmeter-master-svc jmeter-slaves-svc
kubectl delete statefulset jmeter-influxdb
kubectl delete secret new-user
kubectl delete configmap grafana-config grafana-dashboardsmanager-config grafana-database-config grafana-dashboards-config influxdb-config jmeter-load-test