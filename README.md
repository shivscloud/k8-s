kubectl exec -it postgres-deployment-7ddfc5559d-99qfv -- psql -U myuser -d mydatabase

\dt

SELECT * FROM users;

--------------From flask application-------------

kubectl run -it --rm --image=rajeshsingam/prod-working-flask:latest my-flask-app --env="DATABASE_URL=postgresql://myuser:mypassword@postgres-service:5432/mydatabase" -- bash
 

minikube service flask-service

If any issues in pod:

kubectl logs pod-name
kubectl describe pod pod-name


 
