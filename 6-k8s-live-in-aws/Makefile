.PHONY: run_website stop_website install_kind create_kind_cluster install_kubectl create_docker_registry \
	connect_registry_to_kind_network connect_registry_to_kind \
	create_kind_cluster_with_registry delete_kind_cluster delete_docker_registry install_app


run_website:
	docker build -t simple-clock . && \
		docker run --rm --name simple-clock -p 80:80 -d simple-clock
stop_website:
	docker stop simple-clock	
install_kind:
	if ./kind version | cut -b 1-4; \
	then echo "****Kind already installed****"; \
	else curl --location --output ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.11.1/kind-linux-amd64 && chmod +x ./kind && ./kind --version; \
	fi
create_kind_cluster: install_kind install_kubectl create_docker_registry
	./kind create cluster --name simple-clock --config ./manifests/kind_config.yaml || true && \
                kubectl get nodes -o wide
install_kubectl:
	bash kubectl.sh

create_docker_registry:
	if docker ps | grep -q 'local-registry'; \
	then echo "*************local-registry already created*****************"; \
	else docker run --name local-registry -d --restart=always -p 5000:5000 registry:2; \
	fi

connect_registry_to_kind_network:
	docker network connect kind local-registry || true

connect_registry_to_kind: connect_registry_to_kind_network
	kubectl apply -f ./manifests/kind_configmap.yaml

create_kind_cluster_with_registry:
	$(MAKE) create_kind_cluster && $(MAKE) connect_registry_to_kind

delete_kind_cluster: delete_docker_registry
	./kind delete cluster --name simple-clock

delete_docker_registry:
	docker stop local-registry && docker rm local-registry

install_app:
	helm upgrade --atomic --install simple-clock ./chart
