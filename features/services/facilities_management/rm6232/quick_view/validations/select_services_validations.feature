Feature: Facilities Management - RM6232 - Select services validations

  Background: Navigate to the services page
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'

  @smoulder
  Scenario: No services selected
    And I click on 'Continue'
    Then I should see the following error messages:
      | Select at least one service you need to include in your procurement |
  
  Scenario Outline: Only mandatory services - one extra
    When I check the following items:
      | <service> |
    And I click on 'Continue'
    Then I should see the following error messages:
      | You must select another service to include 'CAFM system', 'Helpdesk services' and/or 'Management of billable works' |

    Examples:
      | service                       |
      | CAFM system                   |
      | Helpdesk Services             |
      | Management of Billable Works  |
  
  Scenario Outline: Only mandatory services - two extra
    When I check the following items:
      | <service_1> |
      | <service_2> |
    And I click on 'Continue'
    Then I should see the following error messages:
      | You must select another service to include 'CAFM system', 'Helpdesk services' and/or 'Management of billable works' |

    Examples:
      | service_1         | service_2                     |
      | CAFM system       | Helpdesk Services             |
      | CAFM system       | Management of Billable Works  |
      | Helpdesk Services | Management of Billable Works  |

  @smoulder
  Scenario: Only mandatory services - three extra
    When I check the following items:
      | CAFM system                   |
      | Helpdesk Services             |
      | Management of Billable Works  |
    And I click on 'Continue'
    Then I should see the following error messages:
      | You must select another service to include 'CAFM system', 'Helpdesk services' and/or 'Management of billable works' |
