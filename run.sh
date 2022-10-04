echo '
-------------------------------------------------
|               Start minikube                 |
-------------------------------------------------
'
minikube start

echo '
-------------------------------------------------
|               Creating Volume                 |
-------------------------------------------------
'
kubectl apply -f volume.yml

echo '
-------------------------------------------------
|               Nginx deployment                |
-------------------------------------------------
'
kubectl apply -f nginx-deployment.yml

echo '
-------------------------------------------------
|               Nginx Nodeport                  |
-------------------------------------------------
'
kubectl apply -f nginx-nodeport.yml

echo '
-------------------------------------------------
|               PHPFPM deployment               |
-------------------------------------------------
'
kubectl apply -f phpfpm-deployment.yml

echo '
-------------------------------------------------
|               PHPFPM Clusterip                |
-------------------------------------------------
'
kubectl apply -f phpfpm-clusterip.yml

echo '
-------------------------------------------------
|               Nginx Config Map                |
-------------------------------------------------
'
kubectl create configmap nginx-conf --from-file=main.conf

echo '
-------------------------------------------------
|               Mount Folder                    |
-------------------------------------------------
'
minikube mount www:/home/docker

echo '
-------------------------------------------------
|               Minikube Dashboard              |
-------------------------------------------------
'
# minikube dashboard