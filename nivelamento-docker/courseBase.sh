apt update -y && apt upgrade -y
sudo apt install openjdk-8-jdk -y

docker pull hello-world

docker pull openjdk:8u181-jdk
docker pull mongo
docker pull openjdk:8u201-jre-alpine3.9 