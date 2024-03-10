#getting the pod name by using label

POD_NAME=$(kubectl get pods -l "app.kubernetes.io/name=redis" -o jsonpath="{.items[0].metadata.name}")


#exec into pod and set the oxvalue to the key
kubectl exec -it ${POD_NAME} -- redis-cli set OxKey OxValue
