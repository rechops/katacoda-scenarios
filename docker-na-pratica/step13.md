O comando `docker build` constrói uma imagem desde um Dockerfile e um contexto. O contexto da construção é o conjunto de arquivos em um PATH ou URL de local especificado. O PATH é um diretório em seu sistema de arquivos local. O URL é um local do repositório Git.

Utilização:
```shell
docker build [OPÇÕES] PATH | URL | -
```

**-t, --tag *nome:tag***  Nome e opcionalmente uma tag