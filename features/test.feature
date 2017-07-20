Feature: I want to test

  Scenario Outline: Open browser and google
    Given I visit "http://www.google.com.au"
    When I search for "<term>"
    Then I can see my results for "<term>"
    Examples:
    | term      |
    | nowtolove |
    | cucumber  |
    | hello w   |
