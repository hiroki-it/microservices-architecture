#!/bin/bash
cd `dirname $0`
cd ..

helmfile apply -e prod -f argo-cd/helmfile-argo-cd.yaml