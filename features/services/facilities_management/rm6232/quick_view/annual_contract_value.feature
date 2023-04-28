Feature: Facilities Management - RM6232 - Annual contract cost
  
  Scenario Outline: Annual contract cost limits inputs
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
    Then I am on the 'Results' page
    And I should see the following 'annual contract cost' in the selection summary:
      | <results_value> |

    Examples:
      | value         | results_value     |
      | 1000000000000 | £100,000,000,000  |
      | 67.4          | £674              |
