@acceptance.FirstRelease
Feature: Authorization
	In order to perform operations against the api
	as a developer consuming the sdk
	I need to be able to authenticate

Scenario: Explicit Resource Owner Authorization
	Given I have an apikey
    And an apisecret
    And a username
    And a password
	When I ask the sdk for an authentication token
	Then a token is returned

Scenario: Explicit Client Credentials Authorization
	Given I have an apikey
    And an apisecret
	When I ask the sdk for an authentication token
	Then a token is returned