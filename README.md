# S206-Karate-Gatling
Repositório destinado ao trabalho da disciplina de S206 - Qualidade de Sofware com enfoque em Karate Gatling

## Iniciar o repositório com o Arquétipo do Karate
```powershell
mvn archetype:generate "-DarchetypeGroupId=com.intuit.karate" "-DarchetypeArtifactId=karate-archetype" "-DarchetypeVersion=1.0.1" "-DgroupId=poke-api" "-DartifactId=poke-api"
```

## Executar os testes
```powershell
Executar um teste a partir do Runner ou suíte:
mvn test –Dtest=Runner

Executar testes separados por tags:
mvn test -Dkarate.options="--tags @tag"

Para ignorar alguma tag:
mvn test -Dkarate.options="--tags ~@tag" 
```
