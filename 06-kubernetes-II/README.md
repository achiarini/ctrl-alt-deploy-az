***Descrizione dell'Esercitazione***

**Obiettivo**:
Imparare a creare un primo deployment su Kubernetes


**Assignment**:

1. Sono formati 8 coppie di lavoro a cui è assegnato un pokemon
2. I team svilupperanno un'applicazione a microservizi
3. I servizi sviluppati dai team saranno resi disponibili sul cluster con la seguente URL:
    http://<IP_PUBBLICO>/<service-name> -> Servizio
4. Il servizio deriva dal codice dell'app hello-world delle esercitazioni precedenti, ogni team dovrà customizzare il payload di risposta
5. C'è una dashboard che monitora la disponibilità del servizio





**Preparazione dell'ambiente**:

1. Creare cluster AKS con autenticazione locale e RBAC di kubernetes

2. Creare un Gruppo AAD per gli Utenti del Cluster
Crea un gruppo in Azure Active Directory per gli utenti che avranno accesso al cluster AKS. Aggiungi gli utenti desiderati a questo gruppo.

3. Assegnare Ruoli agl gruppo ruolo  in AIM del cluster su  Azure
Utilizza il portale Azure per assegnare il ruolo di amministratore al gruppo. 

4. Accedi da command-line per assegnare i ruoli di cluster manager
Utilizza il portale Azure per assegnare il ruolo di amministratore al gruppo. 

```
az login --tenant cd8d9182-4bbd-4bfe-97a3-3831ff712ad8
az aks get-credentials -g Ash -n k8s-01
kubectl create clusterrolebinding aks-cluster-admin-binding --clusterrole=cluster-admin --group="<AAD-Group-Object-ID>"
```

5. installare l' ingress-controller nginx per kubernetes

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.2/deploy/static/provider/cloud/deploy.yaml
```
6. creare i seguenti namespaces

- ash
- meowth
- squirtle
- charmander
- glaceon
- jolteon
- leafeon
- bulbasaur
- umbreon


7. Creare Container registry: modificare cluster aks policy di accesso e accesso dal cluster
https://learn.microsoft.com/en-us/azure/container-registry/container-registry-concepts
```
docker tag ctrlaltdeploy/ash/hello-world ctrlaltdeploy.azurecr.io/ash/hello-world
docker push ctrlaltdeploy.azurecr.io/ash/hello-world
```

8. creo le seguenti risorse:

- deployment.yaml
- service.yaml
- ingress.yaml


9. testo deployment

10. imposto dashboard su uptimeRobot 

