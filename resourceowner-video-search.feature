Feature: Search for Videos with Resource Owner credentials
	As a consumer of the SDK
	I want to search for videos
	So I can use the videos in my application

Scenario: SDK client can specify the largest downloads field on video search
  Given I have an apikey
  And an api secret
  And a username
  And a password
  And a blended video search
  And largest_downloads field is specified
  When the video search is executed
  Then the status is success
  And video search results are returned
  And the largest_download field is returned
