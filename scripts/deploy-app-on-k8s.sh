#!/bin/bash

cluster_name=capstone-cluster
cluster_data=$(eksctl get cluster | grep capstone-cluster)
if [[ -z cluster_data ]]; then
  echo "Cluster not created!"
  exit 1;
fi
aws eks --region us-west-2 update-kubeconfig --name $cluster_name
kubectl config set-context $cluster_name
kubectl apply -f ./scripts/deployment.yml

