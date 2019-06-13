Execute um novo contêiner do MongoDB sem expor a porta de conexão;

#### Execução

`docker run --rm -d --name voter-mongo mongo`{{execute}}

**--rm** Automaticamente remove o contêiner quanto sair.

**-d, --detach**  Executa um contêiner em *background* e imprime o ID do contêiner.

**--name** Atribui um nome custom para o contêiner (default gera um random)