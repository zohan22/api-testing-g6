Feature: Obtener cover photo por ID válido
Background:
* url 'https://fakerestapi.azurewebsites.net/api/v1/CoverPhotos'
  Scenario: TCC-002 - Obtener cover photo por ID válido
  Given path '1'
  When method GET
  Then status 200
  And match response.id == 1