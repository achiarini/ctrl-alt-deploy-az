#! /bin/bash

cd /usr
#load python environment
source ./hello-world-flask/.venv/bin/activate
cd ./hello-world-flask
#run app
python3 -m flask run --host=0.0.0.0