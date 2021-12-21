to generate dep file
kubectl create deployment --dry-run=client --image localhost:5000/simple-clock simple-clock --output=yaml > deployment.yaml

docker tag simple-clock localhost:5000/simple-clock

docker push localhost:5000/simple-clock 

kubectl get deploy
kubectl get pods -l app=simple-clock

kubectl port-forward pod/simple-clock-b458df66d-ghqms 8888:80

curl http://localhost:8888

kubectl create service clusterip --dry-run=client --tcp=80:80 simple-clock --output=yaml > service.yaml

kubectl get all -l app=simple-clock --all-namespaces
