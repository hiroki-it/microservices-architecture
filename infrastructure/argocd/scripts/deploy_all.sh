#!/bin/bash
cd `dirname $0`
cd ..

kubectl apply -f common.yaml
kubectl apply -f frontend-application.yaml
kubectl apply -f bff-application.yaml
kubectl apply -f catalogue-application.yaml
kubectl apply -f catalogue-db.yaml
kubectl apply -f order-application.yaml
kubectl apply -f order-db.yaml
kubectl apply -f shipping-application.yaml
kubectl apply -f rabbitmq.yaml
