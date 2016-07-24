Feature: Collections with Resource Owner Credentials
  In order to find what I want by collection
  as a developer wanting to use Getty Images assets
  I need to be able to get a list of valid collections

Scenario: Get Collections succeeds
  Given I have an apikey
    And an apisecret
    And a username
    And a password
  When I retrieve collections
  Then I receive collection details
