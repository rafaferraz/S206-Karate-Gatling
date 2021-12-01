@pokeapi
Feature: Executar testes funcionais nas APIs do Pokemon

Background: Executa antes de cada teste 
    * def url_base = "https://pokeapi.co/api/v2/"

@pokemon=ditto
Scenario: Verificar o retorno com sucesso da API /pokemon/ditto com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url url_base
    And path 'pokemon/ditto'
    When method get 
    Then status 200
    And match response.name == "ditto"

@pokemon=pikachu
Scenario: Verificar o retorno com sucesso da API /pokemon/pikachu com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url url_base
    And path 'pokemon/pikachu'
    When method get 
    Then status 200
    And match response.name == "pikachu"

@type=3
Scenario: Verificar o retorno com sucesso da API /type/3 com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url url_base
    And path 'type/3'
    When method get 
    Then status 200
    And match response.name == "flying"

@ability=5
Scenario: Verificar o retorno com sucesso da API /ability/5 com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url url_base
    And path 'ability/5'
    When method get 
    Then status 200
    And match response.name == "sturdy"

@fail
Scenario: Verificar o retorno com sucesso do erro gerado com a API /pokemon/agumon com dados inválidos de requisição (request)
    Given url url_base
    And path 'pokemon/agumon'
    When method get 
    Then status 404

@fail
Scenario: Verificar o retorno com sucesso do erro gerado com a API /pokemon/angemon com dados inválidos de requisição (request)
    Given url url_base
    And path 'pokemon/angemon'
    When method get 
    Then status 404

