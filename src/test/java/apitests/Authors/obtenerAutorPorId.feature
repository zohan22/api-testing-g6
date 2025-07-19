Feature: Obtener autor por ID válido

  Background:
    * def getAuthorsIds = read('classpath:utils/getAuthorsIds.js')
    * def selectRandomId = read('classpath:utils/selectRandomId.js')

    Given url baseUrl
    And path 'Authors'
    When method GET
    Then status 200
    * def autores = response
    * def ids = call getAuthorsIds autores
    * assert ids.length > 0
    * def randomId = call selectRandomId ids
    * assert randomId != null
    * print 'IDs obtenidos:', ids
    * print 'ID aleatorio:', randomId

  Scenario: TCA-005 - Obtener autor con ID válido
    Given url baseUrl
    And path 'Authors', randomId
    When method GET
    Then status 200
    And match response == { id: '#number', idBook: '#number', firstName: '#string', lastName: '#string' }
    * print 'Autor obtenido con ID', randomId, ':', response

