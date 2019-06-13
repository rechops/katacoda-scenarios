# Documentação

https://hub.docker.com/_/mongo

https://github.com/docker-library/mongo/blob/4a81205a13fefc418355248f750551e4f7c62361/3.0/Dockerfile

# Execução


`docker run -d -p 27017:27017 --name voter-mongo mongo`{{execute}}
`docker ps`{{execute}}

# Flags

**-d, --detach**  Executa um contêiner em *background* e imprime o ID do contêiner.

**-p, --publish *hostPort:containerPort*** Publica a(s) porta(s) do contêiner na máquina hospedeira.

**--name** Atribui um nome custom para o contêiner (por padrão gera um randômico)
