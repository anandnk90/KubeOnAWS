#!/bin/bash

cluster_name=capstone-cluster
cluster_data=$(eksctl get cluster | grep capstone-cluster)
if [[ -z cluster_data ]]; then
  eksctl create cluster --name cluster1 --version 1.16 --region us-west-2 
fi

