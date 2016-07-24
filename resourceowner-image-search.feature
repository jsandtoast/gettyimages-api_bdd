Feature: Search for Images with ResoureOwner
  To create a rockin website with sweet images
  As a developer that wants to expose images to resell
  I'd need to be able to find me some images with minimal effort

Scenario Outline: Search for images specifying product type
Given I have an apikey
And an apisecret
And a username
And a password
When I configure my search for editorial images
And I specify a <product type> product type
And I search for dog
Then I get a response back that has my images
Examples:
| product type            |
| editorialsubscription   |
| premiumaccess           |
| easyaccess              |
