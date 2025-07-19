Feature: Contiene tests de tipo DELETE
    Scenario: Verifica la eliminacion de una actividad

        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Activities/3'
        When method DELETE
        Then status 200
        And assert responseTime < 5000