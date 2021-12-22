helm show all ../chart
helm template ./chart
helm upgrade --install simple-clock ./chart
docker tag simpe-clock-website localhost:5000/simple-clock
docker push localhost:5000/simple-clock

1. Create kind with local registry
2. Build docker image and push it to local registry
3. Install ingress nginx 
3. Create template using helm & install it
