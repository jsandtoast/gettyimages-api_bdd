@acceptance.FirstRelease
Feature: Downloads
  In order to serve image content on my site
  as a developer consuming the sdk
  I need to be able to download images

Scenario: Attempt download with Client Credentials
Given I have an apikey
And an apisecret
When I request for any image to be downloaded
Then I receive an error

Scenario: Download image with Resource Owner credentials
Given I have an apikey
And an apisecret
And a username
And a password
When I request for any image to be downloaded
Then the url for the image is returned

Scenario Outline: Download image with file type specified
Given I have an apikey
And an apisecret
And a username
And a password
When I request for any image to be downloaded
And I specify <value> file type
Then the url for the image is returned
Examples:
| value |
| eps   |
| jpg   |
| gif   |

Scenario: Download image with height specified
Given I have an apikey
And an apisecret
And a username
And a password
When I request for any image to be downloaded
And a pixel height
Then the url for the image is returned
And the url has the correct height

Scenario: Download largest image 
Given I have an apikey
And an apisecret
And a username
And a password
When I request for any image to be downloaded
Then the url for the image is returned
And the url will return the largest image

Scenario: Download image from specified product type
Given I have an apikey
And an apisecret
And a username
And a password
When I request for any image to be downloaded
And I specify a <product type> product type
And I specify a product id <value>
Then the url for the image is returned
Examples:
| product type            | value |
| editorialsubscription   | 0000  |
| premiumaccess           | 2726  |
| easyaccess              | 1161  |
| royaltyfreesubscription | 0001  |
| imagepack               | 0002  |

Scenario: Download image  
Given I have an apikey
And an apisecret
And a username
And a password
When I request for any image to be downloaded
And I specify to auto download 
Then an image is returned