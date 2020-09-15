# dockerize-simple-app

This repo contains a simple example on how to dockerize an application. It has 3 levels of complexity.

## Master branch

This branch contains the most basic content where you can see a Dockerfile to build a python image with Flask library as dependency. In app folder we use flask to start-up a server wich return 'hello world' on root route '/'.

### Steps to Run:
```sh
$ cd path/to/dockerize-simple-app
$ docker image build -t dockerapp:0.1
$ docker container run -d -p 5000:5000 <imageid> // image id can be obteined using docker images
```

## feature-v0.1

In this branch a little complexity is introduce in our app where we going to have an HTML to interact with an user . User will be able to save keys values and read them whenever he wants. 

### Steps to Run:
```sh
$ cd path/to/dockerize-simple-app
$ docker image build -t dockerapp:0.1
$ docker container run -d -p 5000:5000 <imageid> // image id can be obteined using docker images
```

## feature-v0.2

Finally in this branch we use redis to store our cache data. For that purpose we create a docker-compose.yml in order to run two containers, one will be our app and the other one will be our redis data storage .

### Steps to Run:
```sh
$ cd path/to/dockerize-simple-app
$ docker-compose up -d
```
