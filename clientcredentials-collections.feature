Feature: Collections with Client Credentials
  In order to find what I want by collection
  as a developer wanting to use Getty Images assets
  I must provide Resource Owner Credentials

Scenario: Get Collections is not authorized
  Given I have an apikey
    And an apisecret
  When I retrieve collections
  Then I recieve an error stating "Your access token does not authorize access to this resource."
