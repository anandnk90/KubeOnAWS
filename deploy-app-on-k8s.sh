#!/bin/bash

cluster_name=cluster1
cluster_data=$(eksctl get cluster | grep cluster1)
if [[ -z cluster_data ]]; then
  echo "Cluster not created!"
  exit 1;
fi
aws eks --region us-west-2 update-kubeconfig --name $cluster_name
kubectl config set-context $cluster-name
kubectl apply -f deployment.yml

