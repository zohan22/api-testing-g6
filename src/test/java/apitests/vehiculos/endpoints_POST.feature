Feature: Contiene tests de tipo POST

    Scenario Outline: Verifica que se puede crear un vehiculo de tipo: <tipoVehiculo>
        Given url 'https://686df563c9090c495387bde6.mockapi.io/api/v1/'
        And path 'vehiculo'
        * def randomNumero = read('classpath:utils/generateRandomNumber.js')
        * def numPuertas = randomNumero(1, 5)
        * def estadoVehiculo = call read('classpath:utils/generateRandomText.js') { baseText: 'Auto', length: 4 }
        * print estadoVehiculo
        * def bodyRequest =
            """
            {
                "tipo": <tipoVehiculo>,
                "traccion": "Doble",
                "numeroPuertas": "#(numPuertas)",
                "paisProcedencia": "China",
                "anio": 2010,
                "estadoVehiculo": "#(estadoVehiculo)",
                "marcaId": "4"
            }
            """
        And request bodyRequest
        When method POST
        Then status 201

        Examples:
            | tipoVehiculo |
            | Camion       |
            | Vagoneta     |
            | Minibus      |


    Scenario: Verifica que se puede crear un vehiculo de tipo
        Given url 'https://686df563c9090c495387bde6.mockapi.io/api/v1/'
        And path 'vehiculo'
        * def randomNumero = read('classpath:utils/generateRandomNumber.js')
        * def numPuertas = randomNumero(1, 5)
        * def estadoVehiculo = call read('classpath:utils/generateRandomText.js') { baseText: 'Auto', length: 4 }
        * print estadoVehiculo
        * def bodyRequest =
            """
            {
                "tipo": "Auto",
                "traccion": "Doble",
                "numeroPuertas": "#(numPuertas)",
                "paisProcedencia": "China",
                "anio": 2010,
                "estadoVehiculo": "#(estadoVehiculo)",
                "marcaId": "4"
            }
            """
        And request bodyRequest
        When method POST
        Then status 201
        And assert responseTime < 3000
        And match response == "#object"
        And match response ==
            """
            {
                "tipo": "#string",
                "traccion": "#string",
                "numeroPuertas": "#number",
                "paisProcedencia": "#string",
                "anio": "#number",
                "estadoVehiculo": "#string",
                "id": "#string",
                "marcaId": "#string"
            }
            """
        And assert response.marcaId == 4
        And match response.anio == 2010
        