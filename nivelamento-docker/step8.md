#### Atividade

3) Clonar o repositório da API de votação;

4) (Opcional) Executar localmente a aplicação (requer Java 8 configurado);


`git clone --depth 1 --branch master https://github.com/ThoughtWorksInc/voter-service.git`{{execute}}

`cd voter-service`{{execute}}

`./gradlew clean build -x test`{{execute}}

`java -jar build/libs/voter-service-0.2.0.jar`{{execute}}



Execute o seguinte comando no Terminal 2: `curl localhost:8099`{{execute T2}}