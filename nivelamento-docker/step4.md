
```shell
docker run -d -p 27017:27017 --name voter-mongo mongo
```

**-d, --detach**  Executa um contêiner em *background* e imprime o ID do contêiner.

**-p, --publish *hostPort:containerPort*** Publica a(s) porta(s) do contêiner na máquina hospedeira.

**--name** Atribui um nome custom para o contêiner (por padrão gera um randômico)
