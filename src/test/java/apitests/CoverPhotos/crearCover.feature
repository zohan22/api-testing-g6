Feature: Crear cover photo valida
Background:
* url 'https://fakerestapi.azurewebsites.net/api/v1/CoverPhotos'
  Scenario: TCC-004 - Crear cover photo válida 
  Given request { id: 200, idBook: 1, url: 'https://example.com/img.jpg' }
  And header Content-Type = 'application/json'
  When method POST
  Then status 200
  And match response.id == 200