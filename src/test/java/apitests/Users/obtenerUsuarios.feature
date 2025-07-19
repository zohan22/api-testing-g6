Feature: Obtener todos los usuarios

  Scenario: TCU-001 - Obtener todos los usuarios registrados
    Given url baseUrl
    And path 'Users'
    When method GET
    Then status 200
    And match response == '#[]'
    * print 'Usuarios:', response