#!/bin/bash

helmfile apply -e prod -f infrastructure/setup/argo-cd/helmfile-argo-cd.yaml
