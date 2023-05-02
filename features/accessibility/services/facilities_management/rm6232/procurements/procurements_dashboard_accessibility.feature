@accessibility
Feature: Facilities Management - Service requirements accessibility

  Scenario: Procurement dashboard
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'View your saved searches'
    Then I am on the 'Saved searches' page
    Then the page should be axe clean
