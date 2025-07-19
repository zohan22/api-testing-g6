Feature: Obtener todos los autores

  Scenario: TCA-001 - Obtener todos los autores registrados
    Given url baseUrl
    And path 'Authors'
    When method GET
    Then status 200
    And match response == '#[]'
    * print 'Autores:', response