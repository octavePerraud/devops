docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

#build
docker build -t $DOCKER_USERNAME/tp-devops:tp2-simple-api simple-api
docker build -t $DOCKER_USERNAME/tp-devops:tp2-httpd httpd
docker build -t $DOCKER_USERNAME/tp-devops:tp2-database database

#push
docker push $DOCKER_USERNAME/tp-devops:tp2-simple-api
docker push $DOCKER_USERNAME/tp-devops:tp2-httpd
docker push $DOCKER_USERNAME/tp-devops:tp2-database