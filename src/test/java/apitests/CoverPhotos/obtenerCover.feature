Feature: Obtener todas las CoverPhotos
Background:
* url 'https://fakerestapi.azurewebsites.net/api/v1/CoverPhotos'
  Scenario: TCC-001 - Obtener todas las cover photos 
  Given path ''
  When method GET
  Then status 200
  And match response contains deep {id: '#number',idBook: '#number', url: '#string'}
  * print 'Cover Photos:', response