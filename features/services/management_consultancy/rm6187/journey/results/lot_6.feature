@skip-production
Feature: Management Consultancy - Lot 6 - Procurement and Supply Chain - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 6 - Procurement and Supply Chain'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 6 - Procurement and Supply Chain'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '14' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE           |
      | BASHIRIAN, BODE AND STEUBER         |
      | GERHOLD-RUNTE                       |
      | GOYETTE-KOEPP                       |
      | HETTINGER, MURPHY AND HERMISTON     |
      | JOHNSON GROUP                       |
      | KRAJCIK-ZIEMANN                     |
      | KUPHAL, CARTER AND DIETRICH         |
      | KUPHAL, JOHNSTON AND SCHROEDER      |
      | MCDERMOTT, SCHULTZ AND GLEICHNER    |
      | MOEN GROUP                          |
      | SHANAHAN LLC                        |
      | SMITH AND SONS                      |
      | STOLTENBERG, POWLOWSKI AND KREIGER  |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'P2P'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE           |
      | BASHIRIAN, BODE AND STEUBER         |
      | ERNSER GROUP                        |
      | GERHOLD-RUNTE                       |
      | GOYETTE-KOEPP                       |
      | HETTINGER, MURPHY AND HERMISTON     |
      | HODKIEWICZ LLC                      |
      | JOHNSON GROUP                       |
      | KRAJCIK-ZIEMANN                     |
      | KSHLERIN, BUCKRIDGE AND BROWN       |
      | KSHLERIN INC                        |
      | KUHIC AND SONS                      |
      | KUPHAL, CARTER AND DIETRICH         |
      | KUPHAL, JOHNSTON AND SCHROEDER      |
      | MCDERMOTT, SCHULTZ AND GLEICHNER    |
      | MOEN GROUP                          |
      | SHANAHAN LLC                        |
      | SMITH AND SONS                      |
      | STOLTENBERG, POWLOWSKI AND KREIGER  |
      | TOWNE AND SONS                      |
      | ULLRICH, MONAHAN AND REICHEL        |
      | WOLF, BEIER AND GOODWIN             |

  Scenario: Going back from a supplier
    And I click on 'MOEN GROUP'
    Then I am on the 'MOEN GROUP' page
    And the sub title is 'MCF3 lot 6 - Procurement and Supply Chain'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE           |
      | BASHIRIAN, BODE AND STEUBER         |
      | GERHOLD-RUNTE                       |
      | GOYETTE-KOEPP                       |
      | HETTINGER, MURPHY AND HERMISTON     |
      | JOHNSON GROUP                       |
      | KRAJCIK-ZIEMANN                     |
      | KUPHAL, CARTER AND DIETRICH         |
      | KUPHAL, JOHNSTON AND SCHROEDER      |
      | MCDERMOTT, SCHULTZ AND GLEICHNER    |
      | MOEN GROUP                          |
      | SHANAHAN LLC                        |
      | SMITH AND SONS                      |
      | STOLTENBERG, POWLOWSKI AND KREIGER  |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE           |
      | BASHIRIAN, BODE AND STEUBER         |
      | GERHOLD-RUNTE                       |
      | GOYETTE-KOEPP                       |
      | HETTINGER, MURPHY AND HERMISTON     |
      | JOHNSON GROUP                       |
      | KRAJCIK-ZIEMANN                     |
      | KUPHAL, CARTER AND DIETRICH         |
      | KUPHAL, JOHNSTON AND SCHROEDER      |
      | MCDERMOTT, SCHULTZ AND GLEICHNER    |
      | MOEN GROUP                          |
      | SHANAHAN LLC                        |
      | SMITH AND SONS                      |
      | STOLTENBERG, POWLOWSKI AND KREIGER  |
