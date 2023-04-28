@smoulder
Feature: Facilities Management - RM6232 - Select region validations

  Scenario: No region selected
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Continue'
    Then I should see the following error messages:
      | Select at least one region you need to include in your procurement |
