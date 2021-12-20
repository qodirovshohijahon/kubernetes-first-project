.PHONY: run_website stop_website install_kind

run_website:
	docker build -t simple-clock . && \
		docker run --rm --name simple-clock -p 80:80 -d simple-clock
stop_website:
	docker stop simple-clock	
install_kind:
	 curl --location --output ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.11.1/kind-linux-amd64 && \
		 chmod +x ./kind && ./kind --version
