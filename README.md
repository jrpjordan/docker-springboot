# docker-springboot
Repository to store an example of REST web service with MySQL, spring-boot and docker

# Documentation
Project based on this guidelines: https://spring.io/guides/gs/accessing-data-mysql/

# Deploy

create the docker network:

    docker network create -d bridge --subnet 172.25.0.0/16 [NETWORK NAME] 
    docker network inspect [NETWORK NAME] 

start docker container for mysql:

    docker run --name mysqljoser --network [NETWORK NAME] --ip 172.25.0.2 -v [LOCAL_PATH]:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=springuser -d mysql:latest

(springboot app is configured to connect mysql on 172.25.0.2)

- LOCAL_PATH is the path of your local machine where mysql will persist ddbb and the data
- NETWORK NAME is the name for the docker network
- MYSQL_ROOT_PASSWORD is the password to access ddbb as root

Compile springboot project:

    mvn clean install on the root folder of the project

Generate the image for the app:

    docker build -t [IMAGE NAME] . 

Run the container:

    docker run -it --name [CONTAINER NAME] --network [NETWORK NAME] -p 9000:9000 -d [IMAGE NAME]

(-d is detached mode, if remove -d you will view logs output)


# Testing Application

Using POSTMAN app, try to make a POST request 

    http://localhost:9000/users/add?name=joser&email=joseramon@gmail.com

or a GET to:

    http://localhost:9000/users/all


Links: 
- Mover BBDD a docker : https://hub.docker.com/_/mysql/
