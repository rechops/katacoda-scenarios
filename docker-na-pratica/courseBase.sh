apt update -y && apt upgrade -y
apt install openjdk-8-jdk -y

echo "done" >> /root/java-install-finished

docker pull hello-world

docker pull openjdk:8u181-jdk
docker pull mongo:latest
docker pull openjdk:8u201-jre-alpine3.9 

echo "done" >> /root/docker-images-finished

git clone --depth 1 --branch master https://github.com/ThoughtWorksInc/voter-service.git

cd voter-service

./gradlew clean build

echo "done" >> /root/voter-service-pre-build-finished