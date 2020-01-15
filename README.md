# docker-springboot
Repository to store an example of REST web service with MySQL, spring-boot and docker

# Documentation
Project based on this guidelines: https://spring.io/guides/gs/accessing-data-mysql/

# Deploy
start docker container for mysql:

    docker run --name mysqljoser -v [LOCAL_PATH]:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=springuser -p 3306:3306 -d mysql:latest

- LOCAL_PATH is the path of your local machine where mysql will persist ddbb and the data

    mvn clean install on the root folder of the project

    cd target/

    java -jar docker-springboot-0.0.1-SNAPSHOT.jar

# Testing Application

Using POSTMAN app, try to make a POST request 

    http://localhost:9000/users/add?name=joser&email=joseramon@gmail.com

or a GET to:

    http://localhost:9000/users/all


Links: 
- Mover BBDD a docker : https://hub.docker.com/_/mysql/
