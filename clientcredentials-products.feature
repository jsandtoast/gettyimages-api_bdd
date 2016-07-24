Feature: User Products with Client credentials
    As a developer using the Getty Images
    I want to be able to get a list of a user's products
    So I can display them in my application

Scenario: Retrieve products without specifying user credentials
    Given I have an apikey
	And an apisecret
	When I retrieve products
    Then I receive a successful response
    And the products list is empty
