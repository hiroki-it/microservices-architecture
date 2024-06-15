 #!/bin/bash
cd `dirname $0`
cd ..

istioctl install --set profile=demo -f istio/ingressgateway_NodePort.yaml -y

kubectl label namespace default istio-injection=enabled
