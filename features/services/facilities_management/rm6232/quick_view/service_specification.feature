Feature: Facilities Management - RM6232 - Service specification
  
  Scenario: Service specification
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Given I click on the service specification for '<service_name>'
    And I switch to the newly opened tab
    Then I am on the '<page_title>' page
    And the page sub title is 'Service specification'
    And The service name and code is '<service_name_and_code>'
    And there '<option>' generic requirements

    Examples:
      | service_name                                      | page_title                                                    | service_name_and_code                                   | option  |
      | Mechanical and Electrical Engineering Maintenance | Work Package E - Maintenance Services                         | E1 - Mechanical and Electrical Engineering Maintenance  | are     |
      | Outside catering                                  | Work Package H - Catering Services                            | H7 - Outside Catering                                   | are     |
      | Sports and leisure                                | Work Package N - Miscellaneous FM Services                    | N2 - Sports and Leisure                                 | are not |
      | CAFM system                                       | Work Package Q - Computer-aided facilities management (CAFM)  | Services Q1/Q2 – CAFM Services                          | are not |
