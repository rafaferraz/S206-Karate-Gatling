@pokeapi
Feature: Executar testes funcionais nas APIs do Pokemon

Scenario: Verificar o retorno com sucesso da API /pokemon/ditto com dados válidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/ditto'
    When method get 
    Then status 200

Scenario: Verificar o retorno com sucesso da API /pokemon/pikachu com dados válidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/pikachu'
    When method get 
    Then status 200

Scenario: Verificar o retorno com sucesso da API /pokemon/vulpix com dados válidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/vulpix'
    When method get 
    Then status 200

Scenario: Verificar o retorno com sucesso da API /pokemon/raikou com dados válidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/raikou'
    When method get 
    Then status 200

Scenario: Verificar o retorno com sucesso da API /pokemon/agumon com dados inválidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/agumon'
    When method get 
    Then status 200

Scenario: Verificar o retorno com sucesso da API /pokemon/angemon com dados inválidos de requisição (request)
    Given url 'https://pokeapi.co/api/v2/pokemon/angemon'
    When method get 
    Then status 200

