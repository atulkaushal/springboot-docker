call mvnw clean package
call docker build -t akaushal85/spring-boot-docker .
call docker push akaushal85/spring-boot-docker:latest
call docker network rm my-network
call docker network create my-network
call docker run -d --name mysql-docker --network=my-network  -e MYSQL_ROOT_PASSWORD=root mysql
call docker run -d -p 8080:8080 --network=my-network akaushal85/spring-boot-docker