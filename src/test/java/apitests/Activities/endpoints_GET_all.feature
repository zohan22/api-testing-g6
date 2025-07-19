Feature: Contiene tests de tipo GET
    Scenario: Obtiene todas las actividades

        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Activities'
        When method GET
        Then status 200
        And assert responseTime < 3000
        And match response == "#array"