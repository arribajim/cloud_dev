#!/bin/bash
now=$(date)
echo "$now ------ Generation info -----------" >> configure.log
kubectl cluster-info >> configure.log
kubectl  get rc,pods,nodes,svc,ns >> configure.log
echo "$now creating namespace" >> configure.log
kubectl create namespace guidewire-ns #kubectl create -f kubernet-namespace.yaml 
echo "$now creating pod" >> configure.log
kubectl create -f kubernet-ab.yaml -n guidewire-ns
echo "$now showing pods in ns " >> configure.log
kubectl get pods -o wide --show-labels -n guidewire-ns >> configure.log

