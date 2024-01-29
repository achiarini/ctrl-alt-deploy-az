#! /bin/bash

#Per esporre il container utilizziamo l'opzione -p e l'opzione -d per staccare lo stdin dallo stdin dell'host
docker run  -d -p 1234:5000 cad-ubu-flask-01

sleep 5
docker ps
#testiamo la risposta
echo "testiamo la risposta del container"
curl localhost:1234