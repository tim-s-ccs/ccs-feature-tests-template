Feature: Facilities Management - RM6232 - Service selection and annual contract cost result in correct sub lot

  Background: Navigate to the services page
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'

  @smoulder
  Scenario: Select only hard services
    When I check the following items:
      | Audio Visual (AV) equipment maintenance |
      | Mail room equipment maintenance         |
      | Electrical Testing                      |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '2a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '2b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '2c'

  Scenario: Select only soft services
    When I check the following items:
      | Voice announcement system operation |
      | Archiving (on-site)                 |
      | Repairperson Services               |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '3a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '3b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '3c'

  Scenario: Select only total services
    When I check the following items:
      | End-User Accommodation Services       |
      | Third Party Claims                    |
      | Special Need or Disability Adaptions  |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  Scenario: Select hard and total services
    When I check the following items:
      | Lifts, hoists and conveyance systems maintenance  |
      | Radon Gas Management Services                     |
      | Occupancy Management                              |
      | Housing Stock Management                          |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  Scenario: Select hard and soft/total services
    When I check the following items:
      | Locksmith Services  |
      | Asbestos Management |
      | Porterage           |
      | Routine cleaning    |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  Scenario: Select soft and total services
    When I check the following items:
      | Specialist Health FM Services                           |
      | Reactive cleaning (outside cleaning operational hours)  |
      | Accommodation Stores Service                            |
      | Occupancy Management                                    |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  Scenario: Select soft and hard/total services
    When I check the following items:
      | Full service restaurant                                     |
      | Planned snow and ice clearance                              |
      | Building Information Modelling and Government Soft Landings |
      | Audio Visual (AV) equipment maintenance                     |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  Scenario: Select total and hard/soft services
    When I check the following items:
      | CAFM system                                       |
      | Management of Billable Works                      |
      | Housing and residential accommodation management  |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  Scenario: Select hard and soft services
    When I check the following items:
      | Window cleaning (external)              |
      | Retail Services / Convenience Store     |
      | Condition surveys                       |
      | Energy Performance Certificates (EPCs)  |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'

  @smoulder
  Scenario: Select total, hard and soft services
    When I check the following items:
      | Mail room equipment maintenance                                                                                                           |
      | Fire detection and firefighting systems maintenance                                                                                       |
      | Journal, magazine and newspaper supply                                                                                                    |
      | Trolley service                                                                                                                           |
      | Management and Control of Ranges and Training Areas (MCRT) (including the Operation of a Bidding and Allocation Management (BAMS) system) |
      | Customer Service Centre                                                                                                                   |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '1499999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1a'
    And I click on 'Return to annual contract cost'
    And I enter '6999999' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1b'
    And I click on 'Return to annual contract cost'
    And I enter '11000000' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '1c'
