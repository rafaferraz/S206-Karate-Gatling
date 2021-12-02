<img align="left" width="100" height="100" src="https://i2.wp.com/blog.knoldus.com/wp-content/uploads/2020/05/download-1.png?fit=225%2C224&ssl=1"> <img align="right" width="110" height="100" src="https://miro.medium.com/max/296/1*8frf-ZQnrZeduMc-367mBw.png">

<h1 align="center">Karate-Gatling</h1>
<p align="center"><br>Repositório destinado ao trabalho da disciplina de Qualidade de Sofware com enfoque em Karate Gatling.</p>

<h3 align="center">🖋 Equipe</h3>

* [@Pfaffenbach](https://github.com/Pfaffenbach) - Erich Silveira Pfaffenbach - GES - 10 <br>
* [@IagoCB](https://github.com/IagoCB) - Iago Luiz da Cruz Barbosa - GES - 12 <br>
* [@rafaferraz](https://github.com/rafaferraz) - Rafaela Cristina Ferraz - GEC - 1461 <br>
* [@rairongf](https://github.com/rairongf) - Rairon Gonçalves Ferreira - GES - 1519

## ✅ Requisitos
* Instalar o [Java Development Kit - JDK](https://www.oracle.com/java/technologies/downloads/)
* Instalar o [Maven](https://maven.apache.org)

## 📊 Como executar os testes![68747470733a2f2f6d69726f2e6d656469756d2e636f6d2f6d61782f3239362f312a386672662d5a516e725a6564754d632d3336376d42772e706e67](https://user-images.githubusercontent.com/69472079/144493293-b6332a91-fd2a-4131-a434-c2e06e4f0c25.png)

1. Clone este repositório
2. Abra o terminal do GIT Bash na pasta `poke-api`
3. Para executar os testes:

    - A partir do Runner ou suíte:
    ```bash
    mvn test –Dtest=PokemonRunner
    ```

    - Separados por tags:
    ```bash
    mvn test -Dkarate.options="--tags @tag"
    ```

    - Ignorando alguma tag:
    ```bash
    mvn test -Dkarate.options="--tags ~@tag"
    ```

    - Do Gatling:
    ```bash
    mvn clean test-compile gatling:test
    ```
