Feature: Image Details with Client credentials
  To create a rockin website with sweet images
  As a developer that wants to get some image details
  I'd need to be able to get detailed metadata about some images

Scenario: Client Credentials
	Given I have an apikey
	And an apisecret
	And I have an image id I want details on
	When I retrieve image details
	Then I get a response back that has my image details

Scenario: Specify fields in image detail request
	Given I have an apikey
	And an apisecret
	And I have an image id I want details on
	And I specify images field caption
	And I specify images field title
	When I retrieve image details
	Then I get a response back that has my image details
	And the response contains the caption property
	And the response contains the title property

Scenario: Specify multiple ids in batch image detail request
	Given I have an apikey
	And an apisecret
	And I have a list of image ids I want details on
	When I retrieve details for the images
	Then I get a response back that has details for multiple images