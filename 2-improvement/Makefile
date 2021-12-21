.PHONY: run_website stop_website install_kind create_kind_cluster install_kubectl create_docker_registry

run_website:
	docker build -t simple-clock . && \
		docker run --rm --name simple-clock -p 80:80 -d simple-clock
stop_website:
	docker stop simple-clock	
install_kind:
	 curl --location --output ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.11.1/kind-linux-amd64 && \
		 chmod +x ./kind && ./kind --version
create_kind_cluster:
	kind create cluster --name simple-clock && \
		kubectl get nodes -o wide
install_kubectl:
	bash kubectl.sh

create_docker_registry:
	if docker ps | grep -q 'local-registry'; \
	then echo "*************local-registry already created*****************"; \
	else docker run --name local-registry -d --restart=always -p 5000:5000 registry:2; \
	fi
