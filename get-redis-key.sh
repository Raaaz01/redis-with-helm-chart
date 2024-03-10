
#getting the pod name by using label

POD_NAME=$(kubectl get pods -l "app.kubernetes.io/name=redis" -o jsonpath="{.items[0].metadata.name}")


#printing the oxkey value

kubectl exec -it ${POD_NAME} -- redis-cli get OxKey 
~

