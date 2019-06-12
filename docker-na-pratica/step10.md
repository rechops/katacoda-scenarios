```
FROM openjdk:8u181-jdk
COPY ./voter-service ./usr/local/voter-service
WORKDIR /usr/local/voter-service
RUN ./gradlew clean build -x test
EXPOSE 8099
CMD ["java", "-jar", "build/libs/voter-service-0.2.0.jar", "--spring.data.mongodb.host=voter-mongo"]
```

**FROM** - cria uma camada desde a imagem openjdk:8u181-jdk
**RUN** - executa um comando como parte da construção do contêiner  
**COPY** - copia arquivos para dentro do contêiner  
**ENV** - configura uma variável de ambiente  
**EXPOSE** -  documenta uma porta particular para ser exposta pelo contêiner  
**CMD** - específica um comando que será executado quando o `docker run` for realizado  
**WORKDIR** - muda para o diretório informado (igual ao comando `cd`). Se o diretório não existir, ele é criado.