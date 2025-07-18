Feature: Obtener autores

  Scenario: Verificar que se puede obtener todo los autores
    Given url baseUrl
    And path 'Authors'
    When method GET
    Then status 200