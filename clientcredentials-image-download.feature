Feature: Image Download with Client Credentials
  In order to serve image content on my site
  as a developer consuming the sdk
  I need to be able to download images

Scenario: Attempt download
Given I have an apikey
And an apisecret
When I request for any image to be downloaded
Then the url for the image is returned