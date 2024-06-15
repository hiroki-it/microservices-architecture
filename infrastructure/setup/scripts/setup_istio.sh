 #!/bin/bash

istioctl install --set profile=demo -f infrastructure/setup/istio/ingressgateway_NodePort.yaml -y

kubectl label namespace default istio-injection=enabled
