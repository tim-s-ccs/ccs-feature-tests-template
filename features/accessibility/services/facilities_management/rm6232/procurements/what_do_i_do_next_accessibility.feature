@accessibility @javascript
Feature: Facilities Management - What do I do next accessibility

  Scenario: What do I do next page is accessible
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I have a procurement with the name 'My WDIDN procurement'
    And I am on the 'What do I do next?' page
    And the procurement name is shown to be 'My WDIDN procurement'
    Then the page should be axe clean
