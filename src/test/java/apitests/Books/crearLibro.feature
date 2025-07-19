Feature: Crear libro

  Scenario: TCB-009 - Crear un libro nuevo
    Given url baseUrl
    And path 'Books'
    * def randomNumero = read('classpath:utils/generateRandomNumber.js')
    * def randomText = read('classpath:utils/generateRandomText.js')
    * def randomDate = read('classpath:utils/getRandomDate.js')

    * def idNumber = randomNumero(1000,5000)
    * def paginas = randomNumero(50,500)
    * def titulo = randomText(10)
    * def descripcion = randomText(30)
    * def extracto = randomText(20)
    * def fecha = randomDate()

    * def bodyRequest =
      """
      {
        "id": "#(idNumber)",
        "title": "#(titulo)",
        "description": "#(descripcion)",
        "pageCount": "#(paginas)",
        "excerpt": "#(extracto)",
        "publishDate": "#(fecha)"
      }
      """
    And request bodyRequest
    When method POST
    Then status 200
    And match response == '#object'
    And match response ==
      """
      {
        "id": "#number",
        "title": "#string",
        "description": "#string",
        "pageCount": "#number",
        "excerpt": "#string",
        "publishDate": "#string"
      }
      """
    * print 'Libro creado con ID:', response.id