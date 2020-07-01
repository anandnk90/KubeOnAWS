#!/bin/bash

cluster_name=capstone-cluster
cluster_data=$(eksctl get cluster | grep capstone-cluster)
echo $cluster_data
if [[ -z $cluster_data ]]; then
  #eksctl create cluster --name cluster1 --version 1.16 --region us-west-2 
  echo "Cluster creation complete ${cluster_name}"
else
  echo "Cluster already exists"
fi

