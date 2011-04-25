Feature: Manage countries
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Visit Country
    Given I am on a country page
    When I follow "Edit"
    And I check "Visited"
    And I press "Update Country"
    Then I should see "Status: Visited"