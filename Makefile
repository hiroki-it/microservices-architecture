setup-go-tools:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2
	echo 'export PATH="$PATH:'$(go env GOPATH)'/bin"' >> ~/.zshrc
	source ~/.zshrc

setup-kind:
	bash infrastructure/setup/scripts/setup_kind.sh

setup-istio:
	bash infrastructure/setup/scripts/setup_istio.sh

setup-argo-cd:
	bash infrastructure/setup/scripts/setup_argo-cd.sh
	bash infrastructure/argo-application/scripts/deploy_all.sh
