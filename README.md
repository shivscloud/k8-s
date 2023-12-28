kubectl exec -it postgres-deployment-7ddfc5559d-99qfv -- psql -U myuser -d mydatabase

\dt

SELECT * FROM users;

--------------From flask application-------------

kubectl run -it --rm --image=rajeshsingam/prod-working-flask:latest my-flask-app --env="DATABASE_URL=postgresql://myuser:mypassword@postgres-service:5432/mydatabase" -- bash
 

minikube service flask-service
minikube service nginx-service

If any issues in pod:

kubectl logs pod-name
kubectl logs  postgres-deployment-ff9f9bbdc-b6vx8 -c init-db

kubectl describe pod pod-name

#for windows machine exec into pod
kubectl exec -it nginx-deployment-79bf4977f6-558sd  -- bash

#for linux
kubectl exec -it pod nginx-deployment-7c79c4bf97-kw84v --bash  /usr/share/nginx/html/index.html


 
for pod in $(kubectl get pods --no-headers | cut -d " " -f 1); do kubectl exec -it $pod --rm -f /usr/share/nginx/html/index.html; sleep 1, done
 
