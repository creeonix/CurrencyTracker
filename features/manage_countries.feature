Feature: Manage countries
  In order to manage his travel itinerary
  Mr. Smart
  wants to manage the countries he has visited.
  
  Scenario: List Countries
    Given the following countries exist:
      |name|code|visited|
      |CountryOne|c1|false|
      |CountryTwo|c2|false|
      |CountryThree|c3|true|
      |CountryFour|c4|true|
      |CountryFive|c5|true|
    And I am on the countries page
    Then I should see the following table:
      |Name|Code|Status|
      |CountryOne|c1|Not Visited|
      |CountryTwo|c2|Not Visited|
      |CountryThree|c3|Visited|
      |CountryFour|c4|Visited|
      |CountryFive|c5|Visited|

  Scenario: Visit Country
    Given I am on a country page
    When I follow "Edit"
    And I check "Visited"
    And I press "Update Country"
    Then I should see "Status: Visited"