@pokeapi
Feature: Executar testes funcionais nas APIs do Pokemon

Scenario: Verificar o retorno com sucesso da API /pokemon/ditto com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url 'https://pokeapi.co/api/v2/pokemon/ditto'
    When method get 
    Then status 200
    And match response.name == "ditto"

Scenario: Verificar o retorno com sucesso da API /pokemon/pikachu com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url 'https://pokeapi.co/api/v2/pokemon/pikachu'
    When method get 
    Then status 200
    And match response.name == "pikachu"

Scenario: Verificar o retorno com sucesso da API /type/3 com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url 'https://pokeapi.co/api/v2/type/3'
    When method get 
    Then status 200
    And match response.name == "flying"

Scenario: Verificar o retorno com sucesso da API /ability/5 com dados válidos de requisição (request) e garantir que o json tenha o retorno esperado (name)
    Given url 'https://pokeapi.co/api/v2/ability/5'
    When method get 
    Then status 200
    And match response.name == "sturdy"

Scenario: Verificar o retorno com sucesso do erro gerado com a API /pokemon/agumon com dados inválidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/agumon'
    When method get 
    Then status 404

Scenario: Verificar o retorno com sucesso do erro gerado com a API /pokemon/angemon com dados inválidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/angemon'
    When method get 
    Then status 404

