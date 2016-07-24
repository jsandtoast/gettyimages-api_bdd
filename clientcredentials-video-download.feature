Feature: Video Download with Client Credentials
  In order to serve video content on my site
  as a developer consuming the sdk
  I need to be able to download videos

Scenario: Download succeeds
Given I have an apikey
And an apisecret
When I request for any video to be downloaded
Then the url for the video is returned
