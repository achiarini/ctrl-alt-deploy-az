#! /bin/bash

# spostarsi nella folder che ha il contesto corretto
cd ../01-hello-world

# creare l'immagine docker
docker build -t cad-ubu-flask-01 .

# lanciare l'immagine docker esponendo la porta 5000 del container sulla porta 1234 dell'host. 
docker run  -d cad-ubu-flask-01 

#controlliamo che il processo sia in esecuzione
docker ps 
# aspettiamo un po'
sleep 15
echo "rimozione del container"
#eliminiamo il container
docker stop $(docker ps -q)
#controlliamo che il processo sia in esecuzione
docker ps 

