Execute o contêiner da aplicação, conectando com o contêiner do MongoDB;

#### Execução

`docker run --rm -p 8099:8099 --name voter-registration-web --link voter-mongo:mongo voter-registration/web`{{execute}}

**--rm** Automaticamente remove o contêiner quanto sair.

**-p, --publish *hostPort:containerPort*** Publica a(s) porta(s) do contêiner na máquina hospedeira.

**--link _list_(nome:alias)**  Adiciona uma conexão com outros contêiners

Execute o seguinte comando no Terminal 2: `curl localhost:8099`{{execute T2}}