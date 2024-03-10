Readme:

* prerequisites for minikube cluster
   
   - Container or virtual machine manager,( Im using Docker in my case )
   
  * Installion of Docker ( Using ubuntu )
      
     $ sudo apt update ( updating packages )
     $ cd /opt/
     $ sudo apt install docker.io
     $ sudo usermod -aG docker ubuntu && newgrp docker ( creating newgroup docker and adding ubuntu user to it)
   
  * Installing kubectl

    $ sudo snap install kubectl --classic

  * Installing Helm
   
    $ sudo snap install Helm --classic

  * Installing minikube cluster
    
    $ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    
    $ sudo install minikube-linux-amd64 /usr/local/bin/minikube
 
    $ minikube start --driver=docker ( Start a cluster using the docker driver )
  
    $ minikube config set driver docker ( To make docker the default driver )

 
  * creating bash script to start minikube cluster
   
    $ vi  minikube_start.sh

  * creating bash script to deploy redis using helm chart 0n cluster
  
    $ vi redis_helmchart.sh

  *  creating helm chart defining a deployment with a single container
    
    $ helm create redis ( It will create a new chart with given name redis )
         
        # This command creates a chart directory along with the common files and directories used in a chart.

  Make the changes as per the requirements
    
    $ helm install redis ./redis ( to install to the cluster )


using shell scripts to achieve the tasks


  SHELL SCRIPTS:

    sh minikube_start.sh (to start Minikube cluster)
    sh redis_helmchart.sh (to deploy Redis server using Helm chart)
    sh deploy_redis_deployment.sh  ( to deploy custom redis single container on to the cluster)   
    sh set-redis-key.sh (to set a new key in the Redis server)
    sh get-redis-key.sh (to get and print the value of the key)


----------------------------------------------------------------------------------------------------------------



* kubectl get all ( to check the resources )

* kubectl describe pod ( to get pod details )

* kubectl label pod <podname> name=redis ( to custom label pod with redis)        

* kubectl get pods --show-labels (to check pod labels )

* kubectl get pods -l "app.kubernetes.io/name=redis" -o jsonpath="{.items[0].metadata.name}" ( to get pod name                    
                                                                                         using with the label)
