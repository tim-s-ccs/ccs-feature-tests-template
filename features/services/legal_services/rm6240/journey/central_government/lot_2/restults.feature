@skip-production
Feature: Legal services - Central governemnt - Lot 2 - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 2 - General service provision'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 2 - General service provision'
    Given I check 'Employment'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is 'Lot 2 - General service provision'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '36' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNHARD, WEHNER AND ORN          |
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CRUICKSHANK, RUECKER AND SAWAYN   |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRAHAM, REICHEL AND KULAS         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HESSEL-QUITZON                    |
      | HOMENICK-O'KEEFE                  |
      | HUELS-WELCH                       |
      | JASKOLSKI, VONRUEDEN AND DOOLEY   |
      | LUETTGEN-RIPPIN                   |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | MOSCISKI, LABADIE AND REMPEL      |
      | NICOLAS-PFEFFER                   |
      | PADBERG, KEMMER AND ONDRICKA      |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | SATTERFIELD-WHITE                 |
      | SCHNEIDER AND SONS                |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |
      | STEUBER, THOMPSON AND LANG        |
      | STRACKE GROUP                     |
      | THOMPSON AND SONS                 |
      | TORPHY LLC                        |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |
      | WYMAN-O'CONNER                    |
      | ZULAUF, LABADIE AND MCCULLOUGH    |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Social Housing'
    When I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '24' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNHARD, WEHNER AND ORN          |
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | GREENFELDER LLC                   |
      | HESSEL-QUITZON                    |
      | HYATT, ZIEMANN AND EMARD          |
      | LUETTGEN-RIPPIN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | MOSCISKI, LABADIE AND REMPEL      |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | STEUBER, THOMPSON AND LANG        |
      | STRACKE GROUP                     |
      | THOMPSON AND SONS                 |
      | TORPHY LLC                        |
      | VEUM-LOWE                         |
      | WYMAN-O'CONNER                    |
      | ZULAUF, LABADIE AND MCCULLOUGH    |

  Scenario: Jursidiction selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'Northern Ireland'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNHARD, WEHNER AND ORN          |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | FLATLEY GROUP                     |
      | HESSEL-QUITZON                    |
      | HOMENICK-O'KEEFE                  |
      | HUELS-WELCH                       |
      | HYATT, ZIEMANN AND EMARD          |
      | MOSCISKI, LABADIE AND REMPEL      |
      | ROWE GROUP                        |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |

  Scenario: Going back from a supplier
    And I click on 'EBERT, BASHIRIAN AND MILLER'
    Then I am on the 'EBERT, BASHIRIAN AND MILLER' page
    And the sub title is 'Lot 2 - General service provision'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '36' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNHARD, WEHNER AND ORN          |
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CRUICKSHANK, RUECKER AND SAWAYN   |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRAHAM, REICHEL AND KULAS         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HESSEL-QUITZON                    |
      | HOMENICK-O'KEEFE                  |
      | HUELS-WELCH                       |
      | JASKOLSKI, VONRUEDEN AND DOOLEY   |
      | LUETTGEN-RIPPIN                   |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | MOSCISKI, LABADIE AND REMPEL      |
      | NICOLAS-PFEFFER                   |
      | PADBERG, KEMMER AND ONDRICKA      |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | SATTERFIELD-WHITE                 |
      | SCHNEIDER AND SONS                |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |
      | STEUBER, THOMPSON AND LANG        |
      | STRACKE GROUP                     |
      | THOMPSON AND SONS                 |
      | TORPHY LLC                        |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |
      | WYMAN-O'CONNER                    |
      | ZULAUF, LABADIE AND MCCULLOUGH    |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '36' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNHARD, WEHNER AND ORN          |
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CRUICKSHANK, RUECKER AND SAWAYN   |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRAHAM, REICHEL AND KULAS         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HESSEL-QUITZON                    |
      | HOMENICK-O'KEEFE                  |
      | HUELS-WELCH                       |
      | JASKOLSKI, VONRUEDEN AND DOOLEY   |
      | LUETTGEN-RIPPIN                   |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | MOSCISKI, LABADIE AND REMPEL      |
      | NICOLAS-PFEFFER                   |
      | PADBERG, KEMMER AND ONDRICKA      |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | SATTERFIELD-WHITE                 |
      | SCHNEIDER AND SONS                |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |
      | STEUBER, THOMPSON AND LANG        |
      | STRACKE GROUP                     |
      | THOMPSON AND SONS                 |
      | TORPHY LLC                        |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |
      | WYMAN-O'CONNER                    |
      | ZULAUF, LABADIE AND MCCULLOUGH    |
