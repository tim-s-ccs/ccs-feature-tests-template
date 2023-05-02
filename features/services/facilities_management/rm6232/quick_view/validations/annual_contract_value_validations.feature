Feature: Facilities Management - RM6232 - Annual contract cost validations
  
  Scenario Outline: validations for the annual contract cost
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '<value>' for the annual contract cost
    And I click on 'Continue'
    Then I should see the following error messages:
      | <error_message> |

    Examples:
      | value         | error_message                                                             |
      |               | The annual contract cost must be a whole number greater than 0            |
      | 0             | The annual contract cost must be a whole number greater than 0            |
      | Big int       | The annual contract cost must be a whole number greater than 0            |
