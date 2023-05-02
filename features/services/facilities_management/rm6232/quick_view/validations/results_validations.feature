Feature: Facilities Management - RM6232 - Results validations

  Background: Sign in to the sytem
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'

  Scenario: Contract name is blank
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Essex |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    Given I click on 'Save and continue'
    Then I should see the following error messages:
      | Enter your contract name  |

  @smoulder
  Scenario: Contract name is taken
    Given I have a search and I record the name
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Essex |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I enter the taken contract name into the contract name field
    And I click on 'Save and continue'
    Then I should see the following error messages:
      | This contract name is already in use  |
