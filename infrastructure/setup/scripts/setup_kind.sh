#!/bin/bash

echo "Create kind cluster"
kind create cluster --config kind/kind-config.yaml
echo "--"

echo "Clusters"
kind get clusters
echo "--"

echo "Cluster Info"
kubectl cluster-info
