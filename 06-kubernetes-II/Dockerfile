FROM ubuntu:focal
LABEL org.opencontainers.image.authors="achiarini@gmail.com"
LABEL version="1.0"
LABEL description="This contains a flask image \
for our hello-world application"

RUN apt update 
RUN apt install -y pip
RUN pip install flask
COPY hello-world-flask /usr/hello-world-flask
WORKDIR /usr/hello-world-flask
ENTRYPOINT python3 -m flask run --host=0.0.0.0
EXPOSE 5000

