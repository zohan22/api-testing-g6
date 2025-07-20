Feature: Obtener usuario por ID válido

  Background:
    * def getUsersIds = read('classpath:utils/getUsersIds.js')
    * def selectRandomId = read('classpath:utils/selectRandomId.js')

    Given url baseUrl
    And path 'Users'
    When method GET
    Then status 200
    * def usuarios = response
    * def ids = call getUsersIds usuarios
    * assert ids.length > 0
    * def randomId = call selectRandomId ids
    * assert randomId != null
    * print 'IDs obtenidos:', ids
    * print 'ID aleatorio:', randomId

  Scenario: TCU-005 - Obtener usuario con ID válido
    Given url baseUrl
    And path 'Users', randomId
    When method GET
    Then status 200
    And match response == { id: '#number', userName: '#string', password: '#string' }
    * print 'Usuario obtenido con ID', randomId, ':', response