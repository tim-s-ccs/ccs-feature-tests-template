Feature: Facilities Management - RM6232 - Select services
  
  Background: Navigate to the Services page
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'

  Scenario: Service selection appears in basked
    Then the facilities management basket should say 'No services selected'
    And the remove all link should not be visible
    When I check 'Building Management System (BMS) maintenance'
    Then the facilities management basket should say '1 service selected'
    And the remove all link should not be visible
    And the following items should appear in the facilities management basket:
      | Building Management System (BMS) maintenance  |
    When I check the following items:
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | High Voltage (HV) and switchgear maintenance  |
      | Additional support Services                   |
      | Courier booking and distribution services     |
      | Patrols (fixed or static guarding)            |
    Then the facilities management basket should say '7 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Building Management System (BMS) maintenance  |
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | High Voltage (HV) and switchgear maintenance  |
      | Additional support Services                   |
      | Courier booking and distribution services     |
      | Patrols (fixed or static guarding)            |

  @smoulder
  Scenario: Changing the selection will change the basket
    When I check the following items:
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | High Voltage (HV) and switchgear maintenance  |
      | Additional support Services                   |
      | Courier booking and distribution services     |
      | Patrols (fixed or static guarding)            |
    Then the facilities management basket should say '6 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | High Voltage (HV) and switchgear maintenance  |
      | Additional support Services                   |
      | Courier booking and distribution services     |
      | Patrols (fixed or static guarding)            |
    When I deselect the following items:
      | Additional support Services |
    Then the facilities management basket should say '5 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | High Voltage (HV) and switchgear maintenance  |
      | Courier booking and distribution services     |
      | Patrols (fixed or static guarding)            |
    When I remove the following items from the facilities management basket:
      | Pest control Services                     |
      | Courier booking and distribution services |
    Then the facilities management basket should say '3 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Water Hygiene Maintenance                     |
      | High Voltage (HV) and switchgear maintenance  |
      | Patrols (fixed or static guarding)            |
    When I click on 'Remove all'
    Then the facilities management basket should say 'No services selected'

  Scenario: Select all checkbox
    When I select all for 'Security Services'
    Then the facilities management basket should say '15 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Static Guarding Service                           |
      | CCTV / alarm monitoring                           |
      | Control of access - Staff and Visitors            |
      | Control of access - Vehicles                      |
      | Emergency response                                |
      | Patrols (fixed or static guarding)                |
      | Management of visitors and passes                 |
      | Reactive guarding                                 |
      | Additional security Services                      |
      | Enhanced security requirements                    |
      | Key holding                                       |
      | Lock Up / open up of Buyer Premises               |
      | Patrols (mobile via a specific visiting vehicle)  |
      | Remote CCTV / alarm monitoring                    |
      | Blended Static Guarding Service                   |
    When I remove the following items from the facilities management basket:
      | Enhanced security requirements |
    Then select all 'should not' be checked for 'Security Services'
    When I check 'Enhanced security requirements'
    Then select all 'should' be checked for 'Security Services'

  Scenario: Go back from regions and change selection
    When I check the following items:
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | Building Management System (BMS) maintenance  |
      | Additional support Services                   |
      | Courier booking and distribution services     |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on the 'Return to services' back link
    Then I am on the 'Services' page
    And the following items should appear in the facilities management basket:
      | Building Management System (BMS) maintenance  |
      | Water Hygiene Maintenance                     |
      | Pest control Services                         |
      | Courier booking and distribution services     |
      | Additional support Services                   |
