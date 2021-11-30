import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class PokemonKarateSimulation extends Simulation {
  /**
  * O Gatling permite o reuso dos testes funcionais do Karate como testes de
  * performance. Ferramenta de código aberto.
  */

  /**
  * Obrigatório
  * É o Karate que realiza as requisições HTTP. O Gatling apenas coleta as métricas
  * de performance e coordena as threads.
  * Para que o Gatling consiga reunir corretamente as requisições no relatório,
  * precisamos declarar os padrões de URL envolvidos no teste.
  *
  * No código abaixo, por exemplo, as requisições /pokemon/ditto e /pokemon/pikachu
  * estariam separadas no relatório.
  *
  * Outro ponto é a possibilidade de estipular pausas para cada padrão de 
  * requisição, com o uso do comando `pauseFor()`. É possível, também, definir 
  * tempos distintos para cada método HTTP. 
  * O `Nil` significa ausência de pausa.
  */
  val protocol = karateProtocol(
    "/type/{id}" -> Nil,
    "/ability/{id}" -> Nil,
    "/pokemon/{name}" -> pauseFor("get" -> 25)
  )

  /**
  * Substitui o header da requisição HTTP (se existir) por um Header customizado.
  * Facilita na diferenciação de requisições em que a URL e os `paths` são iguais.
  */
  protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")

  /**
  * Caso algumas configurações sejam necessárias para os testes, podemos definí-las
  * em arquivos de configuração e declarar qual arquivo utilizar 
  * com o comando `runner.karateEnv()`.
  * 
  * Na linha abaixo, por exemplo, o arquivo `karate-config-perf.js` seria utilizado
  * em conjunto com o arquivo padrão de configuração, `karate-config.js`.
  */
  protocol.runner.karateEnv("perf")

  /**
  * As linhas abaixo definem uma Feature inteira como um fluxo.
  * 
  * No fluxo `fail` abaixo, por exemplo, apenas os cenários anotados
  * com a tag `@fail` serão executados. A ordem de execução será a mesma que 
  * aparece na Feature.
  */
  val allTestsFlow = scenario("all").exec(karateFeature("classpath:teste_api/pokemon/pokemon.feature"))
  val failTestsFlow = scenario("fail").exec(karateFeature("classpath:teste_api/pokemon/pokemon.feature@fail"))

  /**
  * Atribui as regras do protocolo para cada fluxo definido anteriormente.
  */
  setUp(
    allTestsFlow.inject(rampUsers(10) during (5 seconds)).protocols(protocol),
    failTestsFlow.inject(rampUsers(5) during (5 seconds)).protocols(protocol)
  )

}