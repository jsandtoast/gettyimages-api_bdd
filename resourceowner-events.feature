Feature: Event Details with Resource Owner Credentials
  To create a rockin website with sweet images based on events i'm interested in
  As a developer that wants to get some image details using Resource Owner Credentials
  I'd need to be able to get events so I can use them to refine my search queries

Scenario: Specify a single event id for event detail request
	Given I have an apikey
	And an apisecret
	And a username
	And a password
	And I have an event id I want details on
	When I retrieve event details
	Then I get a response back that has my event