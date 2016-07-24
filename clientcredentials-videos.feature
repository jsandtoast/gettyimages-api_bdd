Feature: Video Metadata with Client credentials
	As a consumer of the SDK
	I want to get video metadata
	So I can use the metadata in my application

Scenario: SDK client can get default metadata about a video
	Given I have an apikey
	And an api secret
	And a video id
	When the video metadata request is executed
	Then the status is success
	And the video metadata is returned

Scenario: SDK client can get default metadata about multiple videos
	Given I have an apikey
	And an api secret
	And a list of video ids
	When the video metadata request is executed
	Then the status is success
	And a list of video metadata is returned
