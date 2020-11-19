#Build using individual commands:

mvnw clean package

docker build -t akaushal85/spring-boot-docker .

docker push akaushal85/spring-boot-docker

docker network rm my-network

docker network create my-network

docker run --name mysql-docker --network=my-network  -e MYSQL_ROOT_PASSWORD=root mysql

docker run -p 8080:8080 --network=my-network akaushal85/spring-boot-docker

#Build using docker compose:

docker-compose up