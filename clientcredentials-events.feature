Feature: Event details with client credentials
  To create a rockin website with sweet images based on events i'm interested in
  As a developer that wants to get some image details with Client Credentials
  I'd need to be able to get events so I can use them to refine my search queries

#Scenario: Client Credentials
Scenario: Specify a single event id for event detail request
	Given I have an apikey
	And an apisecret
	And I have an event id I want details on
	When I retrieve event details
	Then I get a response back that has my event

Scenario: Specify multiple ids in batch event detail request
	Given I have an apikey
	And an apisecret
	And I have a list of event ids I want details on
	When I retrieve details for the events
	Then I get a response back that has details for multiple events

Scenario: Specify fields in Events Request
	Given I have an apikey
	And an apisecret
	And I have an event id I want details on
	And I specify field id
	And I specify field name
	And I specify field hero_image
	When I retrieve event details
	Then I get a response back that has my event
	And the response contains the id property
	And the response contains the name property
	And the response contains the hero_image property

