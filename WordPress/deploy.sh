# Create local volumes for MySQL
kubectl apply -f local-volumes.yaml

# Create secret for WordPress
kubectl create secret generic mysql-pass --from-file=password.txt

# Create MySQL deployment
kubectl apply -f ./mysql-deployment.yaml

# Create WordPress deployment
kubectl apply -f ./wordpress-deployment.yaml
