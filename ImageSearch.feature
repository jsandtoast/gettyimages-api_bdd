@acceptance.FirstRelease
Feature: Search for Images
  To create a rockin website with sweet images
  As a developer that wants to expose images to resell
  I'd need to be able to find me some images with minimal effort

Scenario Outline: Finding images basic
  Given I have an apikey
  And an apisecret
  When I configure my search for <ImageFamily> images
  And I search for dog
  Then I get a response back that has my images
  Examples:
  | ImageFamily |
  | creative    | 
  | editorial   | 

Scenario Outline: Finding images advanced
  Given I have an apikey
  And an apisecret
  When I configure my search for <ImageFamily> images
  And I specify that I only want to return <Fields> with my search results
  And I search for dog
  Then I get a response back that has my images
  And only required return fields plus <Fields> are returned
  Examples:
  | ImageFamily | Fields       |
  | creative    | asset_family |
  | creative    | title        |
  | editorial   | asset_family |
  | editorial   | title        |

Scenario Outline: Search for images using editorial segments
Given I have an apikey
And an apisecret
When I configure my search for editorial images
And I specify <segment> editorial segment
And I search for All Vocabulary
Then I get a response back that has my images
Examples:
| segment       |
| Archival      |
| Entertainment |
| News          |
| Publicity     |
| Royalty       |
| Sport         |

Scenario Outline: Search for images with graphical styles
Given I have an apikey
And an apisecret
When I configure my search for <ImageFamily> images
And I specify a graphical <style>
And I search for all vocabulary
Then I get a response back that has my images
Examples:
| style        | ImageFamily |
| Fine_Art     | creative    |
| Photography  | creative    |
| Illustration | creative    |
| Photography  | editorial   |

Scenario: Search for images with multiple graphical styles
Given I have an apikey
And an apisecret
When I configure my search for creative images
And I specify a graphical Fine_Art
And I specify a graphical Photography
And I search for dog
Then I get a response back that has my images

Scenario: Search for embeddable images
Given I have an apikey
And an apisecret
When I configure my search for creative images
When I specify I want only embeddable images
And I search for dog
Then I get a response back that has my images

Scenario: Search for images excluding nudity
Given I have an apikey
And an apisecret
When I configure my search for creative images
And I specify I want to exclude images containing nudity
And I search for dog
Then I get a response back that has my images

Scenario Outline: Search for images specifying license model
Given I have an apikey
And an apisecret
When I configure my search for creative images
And I specify a license model <model>
And I search for dog
Then I get a response back that has my images
Examples:
| model          |
| RightsManaged |
| RoyaltyFree   |

Scenario Outline: Search for images specifying orientation
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify an orientation <value>
And I search for dog
Then I get a response back that has my images
Examples:
| image family | value                |
| creative     | Horizontal           |
| creative     | Panoramic_Horizontal |
| creative     | Panoramic_Vertical   |
| creative     | Square               |
| creative     | Vertical             |
| editorial    | Horizontal           |
| editorial    | Panoramic_Horizontal |
| editorial    | Panoramic_Vertical   |
| editorial    | Square               |
| editorial    | Vertical             |
| blended      | Horizontal           |
| blended      | Panoramic_Horizontal |
| blended      | Panoramic_Vertical   |
| blended      | Square               |
| blended      | Vertical             |

Scenario Outline: Search for images with age of people
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify age of people
And I search
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by an artist
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify an artist
And I search
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by collection codes
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify a collection code
And I search
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by compositions
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify a composition
And I search
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by end date
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify an end date
And I search
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by event ids
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify a event id
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |

Scenario Outline: Search for images by ethnicity
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify an ethnicity
And I search
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by file types
Given I have an apikey
And an apisecret
When I configure my search for blended images
And I specify a <value> file type
And I search for people
Then I get a response back that has my images
Examples:
| value |
| eps   |
| gif   |
| jpg   |
| png   |

Scenario Outline: Search for images by keyword ids
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify a keyword id
Then I get a response back that has my images
Examples:
| image family |
| blended      |
| editorial    |
| creative     |

Scenario Outline: Search for images by locations
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify a location of <value>
And I search for dog
Then I get a response back that has my images
Examples:
| image family | value      |
| blended      | california |
| editorial    | chicago    |
| creative     | seattle    |

Scenario Outline: Search for images by number of people
Given I have an apikey
And an apisecret
When I configure my search for <image family> images
And I specify a <value> number of people in image
And I search for people
Then I get a response back that has my images
Examples:
| image family | value |
| blended      | none  |
| editorial    | one   |
| creative     | two   |
| editorial    | group |

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
| royaltyfreesubscription |
| imagepack               |

Scenario: Search for prestige images
Given I have an apikey
And an apisecret
When I configure my search for creative images
When I specify I want only prestige images
And I search for dog
Then I get a response back that has my images