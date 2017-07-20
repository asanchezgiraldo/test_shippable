Feature: I want to test

  Scenario: Open browser and google
    Given I visit "http://www.google.com.au"
    When I search for "nowtolove"
    Then I can see my results for "nowtolove"

  Scenario: Open browser and google
    Given I visit "http://www.google.com.au"
    When I search for "nowtolove"
    Then I can see my results for "adams"