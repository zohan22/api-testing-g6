Feature: Contiene tests de tipo POST
    Scenario: crea una actividad

        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Activities'
        *  def randomBooleano = read('classpath:utils/generateRandomBooleano.js')
        *  def completed = randomBooleano()
        *  def payload =
            """
            {   "id":100,
                "title": "Test API",
                "dueDate": "2025-07-19T08:40:12.734Z",
                "completed": "#(completed)",
            }
            """
        And request payload
        When method POST
        Then status 200
        And assert responseTime < 4000
        And match response == "#object"