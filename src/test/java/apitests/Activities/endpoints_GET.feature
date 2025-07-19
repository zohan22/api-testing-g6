Feature: Contiene tests de tipo GET
    Scenario: Obtiene una actividad

        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Activities/3'
        When method GET
        Then status 200
        And assert responseTime < 3000
        And match response == "#object"