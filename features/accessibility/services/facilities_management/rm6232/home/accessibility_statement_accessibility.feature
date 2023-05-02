@accessibility
Feature: Facilities Management - Accessibility statement accessibility

  Scenario: Accessibility statement
    Given I go to the 'facilities management' start page for 'RM6232'
    When I click on 'Accessibility statement'
    Then I am on the 'Facilities Management (FM) Accessibility statement' page
    Then the page should be axe clean
