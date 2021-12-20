.PHONY: run_website stop_website

run_website:
	docker build -t simple-clock . && \
		docker run --rm --name simple-clock -p 80:80 -d simple-clock
stop_website:
	docker stop simple-clock	
