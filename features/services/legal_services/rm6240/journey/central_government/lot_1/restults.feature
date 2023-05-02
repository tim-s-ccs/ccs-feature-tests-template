@skip-production
Feature: Legal services - Central governemnt - Lot 1 - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 1 - Full service provision'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 1 - Full service provision'
    Given I check 'Information Technology'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is 'Lot 1 - Full service provision'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '23' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CORKERY-BLANDA                    |
      | FLATLEY GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRANT INC                         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HAUCK AND SONS                    |
      | HODKIEWICZ INC                    |
      | LUEILWITZ, JAST AND GLEASON       |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PFEFFER GROUP                     |
      | RATH-NICOLAS                      |
      | RIPPIN, SANFORD AND GOYETTE       |
      | SATTERFIELD-LOCKMAN               |
      | SPORER, MARKS AND HOWE            |
      | THOMPSON AND SONS                 |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Retained EU Law and EU Law'
    When I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '20' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CORKERY-BLANDA                    |
      | GOTTLIEB GROUP                    |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HAUCK AND SONS                    |
      | HODKIEWICZ INC                    |
      | LUEILWITZ, JAST AND GLEASON       |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PFEFFER GROUP                     |
      | RATH-NICOLAS                      |
      | RIPPIN, SANFORD AND GOYETTE       |
      | SATTERFIELD-LOCKMAN               |
      | SPORER, MARKS AND HOWE            |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |

  Scenario: Jursidiction selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'Scotland'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services
    And the selected legal service suppliers are:
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GREENFELDER LLC                   |
      | JASKOLSKI, VONRUEDEN AND DOOLEY   |
      | MOSCISKI, LABADIE AND REMPEL      |
      | NICOLAS-PFEFFER                   |
      | ROWE GROUP                        |
      | RUTHERFORD, LANGOSH AND GREEN     |
      | SATTERFIELD-LOCKMAN               |
      | SCHNEIDER AND SONS                |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |

  Scenario: Going back from a supplier
    And I click on 'HODKIEWICZ INC'
    Then I am on the 'HODKIEWICZ INC' page
    And the sub title is 'Lot 1 - Full service provision'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '23' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CORKERY-BLANDA                    |
      | FLATLEY GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRANT INC                         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HAUCK AND SONS                    |
      | HODKIEWICZ INC                    |
      | LUEILWITZ, JAST AND GLEASON       |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PFEFFER GROUP                     |
      | RATH-NICOLAS                      |
      | RIPPIN, SANFORD AND GOYETTE       |
      | SATTERFIELD-LOCKMAN               |
      | SPORER, MARKS AND HOWE            |
      | THOMPSON AND SONS                 |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '23' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CORKERY-BLANDA                    |
      | FLATLEY GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRANT INC                         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HAUCK AND SONS                    |
      | HODKIEWICZ INC                    |
      | LUEILWITZ, JAST AND GLEASON       |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PFEFFER GROUP                     |
      | RATH-NICOLAS                      |
      | RIPPIN, SANFORD AND GOYETTE       |
      | SATTERFIELD-LOCKMAN               |
      | SPORER, MARKS AND HOWE            |
      | THOMPSON AND SONS                 |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |
