#! /bin/bash


# creare un primo deployment dell'applicazione con Load Balancer
docker compose up

#testare
curl localhost

# ispezionare cosa è stato effettivamente tirato su:
docker ps

# utilizzare locus con localhost per verificare il carico dell'applicazione.
locust

#effettuare scale out dell'applicazione

docker compose scale hello-world-flask=6

# ispezionare cosa è stato effettivamente tirato su:
docker ps
