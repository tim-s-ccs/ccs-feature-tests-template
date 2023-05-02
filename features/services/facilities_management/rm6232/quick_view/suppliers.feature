@skip-production
Feature: Facilities Management - RM6232 - Suppliers

  Background: Navigate to the results page
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance           |
      | Planned / Group re-lamping service                          |
      | Building Information Modelling and Government Soft Landings |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley and Durham  |
      | Essex                   |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in sub-lot '2a'
    And I should see the following 'services' in the selection summary:
      | Mechanical and Electrical Engineering Maintenance           |
      | Planned / Group re-lamping service                          |
      | Building Information Modelling and Government Soft Landings |
    And I should see the following 'regions' in the selection summary:
      | Tees Valley and Durham  |
      | Essex                   |
    And I should see the following 'annual contract cost' in the selection summary:
      | £123,456  |
    And the selected facilities management suppliers are:
      | Dach Inc                        |
      | Feest Group                     |
      | Harber LLC                      |
      | Hudson, Spinka and Schuppe      |
      | Jenkins, Price and White        |
      | Kirlin-Glover                   |
      | Metz Inc                        |
      | Moore Inc                       |
      | O'Reilly, Emmerich and Reichert |
      | Roob-Kessler                    |
      | Skiles LLC                      |
      | Torphy Inc                      |
      | Turner-Pouros                   |
    
    Scenario: Service selection changes the results
      Given I change the 'services' from the selection summary
      Then I am on the 'Services' page
      And I deselect the following items:
        | Building Information Modelling and Government Soft Landings |
      And I check 'Outside catering'
      And I click on 'Continue'
      Then I am on the 'Regions' page
      And I click on 'Continue'
      Then I am on the 'Annual contract cost' page
      And I click on 'Continue'
      Then I am on the 'Results' page
      And I should be in sub-lot '1a'
      And I should see the following 'services' in the selection summary:
        | Mechanical and Electrical Engineering Maintenance |
        | Planned / Group re-lamping service                |
        | Outside catering                                  |
      And the selected facilities management suppliers are:
        | Dach Inc                        |
        | Feest Group                     |
        | Harber LLC                      |
        | Hudson, Spinka and Schuppe      |
        | Metz Inc                        |
        | O'Reilly, Emmerich and Reichert |
        | Roob-Kessler                    |
        | Skiles LLC                      |
        | Torphy Inc                      |
        | Turner-Pouros                   |
    
    Scenario: Region selection changes the results
      Given I change the 'regions' from the selection summary
      Then I am on the 'Regions' page
      And I deselect the following items:
        | Tees Valley and Durham  |
      And I check 'Gloucestershire, Wiltshire and Bristol/Bath area'
      And I click on 'Continue'
      Then I am on the 'Annual contract cost' page
      And I click on 'Continue'
      Then I am on the 'Results' page
      And I should be in sub-lot '2a'
      And I should see the following 'regions' in the selection summary:
        | Essex                                             |
        | Gloucestershire, Wiltshire and Bristol/Bath area  |
      And the selected facilities management suppliers are:
        | Dach Inc                        |
        | Feest Group                     |
        | Harber LLC                      |
        | Hudson, Spinka and Schuppe      |
        | Jenkins, Price and White        |
        | Kirlin-Glover                   |
        | Metz Inc                        |
        | Moore Inc                       |
        | O'Reilly, Emmerich and Reichert |
        | Roob-Kessler                    |
        | Sawayn, Abbott and Huels        |
        | Skiles LLC                      |
        | Torphy Inc                      |
        | Turner-Pouros                   |
    
    Scenario: Annual contract cost  changes the results
      Given I change the 'annual contract cost' from the selection summary
      Then I am on the 'Annual contract cost' page
      And I enter '123456789' for the annual contract cost
      And I click on 'Continue'
      Then I am on the 'Results' page
      And I should be in sub-lot '2c'
      And I should see the following 'annual contract cost' in the selection summary:
        | £123,456,789  |
      And the selected facilities management suppliers are:
        | Bernier, Luettgen and Bednar  |
        | Bins, Yost and Donnelly       |
        | Blick, O'Kon and Larkin       |
        | Breitenberg-Mante             |
        | Cummerata, Lubowitz and Ebert |
        | Harris LLC                    |
        | Lind, Stehr and Dickinson     |
        | Miller, Walker and Leffler    |
        | Muller Inc                    |
        | Satterfield LLC               |
        | Schmeler-Leffler              |
        | Terry-Greenholt               |
        | Yost LLC                      |
        | Zboncak and Sons              |
