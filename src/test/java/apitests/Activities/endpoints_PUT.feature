Feature: Contiene tests de tipo PUT
    Scenario: Verifica que se pueda editar una actividad

        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Activities/3'
        *  def randomBooleano = read('classpath:utils/generateRandomBooleano.js')
        *  def completed = randomBooleano()
        *  def payload =
            """
            {
                "title": "Camion",
                "dueDate": "2025-07-19T08:40:12.734Z",
                "completed": "#(completed)",
            }
            """
        And request payload
        When method PUT
        Then status 200
        And assert responseTime < 5000
        And match response == "#object"