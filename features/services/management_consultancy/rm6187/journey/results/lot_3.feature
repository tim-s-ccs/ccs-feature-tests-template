@skip-production
Feature: Management Consultancy - Lot 3 - Complex and Transformation - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 3 - Complex and Transformation'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 3 - Complex and Transformation'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '8' companies can provide consultants
    And the selected suppliers are:
      | BARROWS AND SONS      |
      | DURGAN INC            |
      | HARVEY-COLLINS        |
      | KIEHN, BLICK AND FUNK |
      | KUHIC AND SONS        |
      | REYNOLDS-HALVORSON    |
      | STIEDEMANN AND SONS   |
      | WILLIAMSON GROUP      |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Business'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '29' companies can provide consultants
    And the selected suppliers are:
      | BARROWS AND SONS                  |
      | BARTON-VON                        |
      | BOGISICH, BAUMBACH AND KERTZMANN  |
      | BRUEN LLC                         |
      | DIBBERT-ANKUNDING                 |
      | DURGAN INC                        |
      | FISHER-DECKOW                     |
      | FUNK-DONNELLY                     |
      | GOYETTE-KOEPP                     |
      | HAAG AND SONS                     |
      | HARTMANN, REMPEL AND DARE         |
      | HARVEY-COLLINS                    |
      | HILLL, HICKLE AND BODE            |
      | KESSLER AND SONS                  |
      | KIEHN, BLICK AND FUNK             |
      | KOELPIN LLC                       |
      | KRAJCIK-ZIEMANN                   |
      | KSHLERIN INC                      |
      | KUHIC AND SONS                    |
      | MCKENZIE LLC                      |
      | NICOLAS AND SONS                  |
      | REYNOLDS-HALVORSON                |
      | REYNOLDS INC                      |
      | SAWAYN-VON                        |
      | SMITH AND SONS                    |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '29' companies can provide consultants
    And the selected suppliers are:
      | STIEDEMANN AND SONS           |
      | TORP GROUP                    |
      | ULLRICH, MONAHAN AND REICHEL  |
      | WILLIAMSON GROUP              |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '29' companies can provide consultants
    And the selected suppliers are:
      | BARROWS AND SONS                  |
      | BARTON-VON                        |
      | BOGISICH, BAUMBACH AND KERTZMANN  |
      | BRUEN LLC                         |
      | DIBBERT-ANKUNDING                 |
      | DURGAN INC                        |
      | FISHER-DECKOW                     |
      | FUNK-DONNELLY                     |
      | GOYETTE-KOEPP                     |
      | HAAG AND SONS                     |
      | HARTMANN, REMPEL AND DARE         |
      | HARVEY-COLLINS                    |
      | HILLL, HICKLE AND BODE            |
      | KESSLER AND SONS                  |
      | KIEHN, BLICK AND FUNK             |
      | KOELPIN LLC                       |
      | KRAJCIK-ZIEMANN                   |
      | KSHLERIN INC                      |
      | KUHIC AND SONS                    |
      | MCKENZIE LLC                      |
      | NICOLAS AND SONS                  |
      | REYNOLDS-HALVORSON                |
      | REYNOLDS INC                      |
      | SAWAYN-VON                        |
      | SMITH AND SONS                    |

  Scenario: Going back from a supplier
    And I click on 'HARVEY-COLLINS'
    Then I am on the 'HARVEY-COLLINS' page
    And the sub title is 'MCF3 lot 3 - Complex and Transformation'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '8' companies can provide consultants
    And the selected suppliers are:
      | BARROWS AND SONS      |
      | DURGAN INC            |
      | HARVEY-COLLINS        |
      | KIEHN, BLICK AND FUNK |
      | KUHIC AND SONS        |
      | REYNOLDS-HALVORSON    |
      | STIEDEMANN AND SONS   |
      | WILLIAMSON GROUP      |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '8' companies can provide consultants
    And the selected suppliers are:
      | BARROWS AND SONS      |
      | DURGAN INC            |
      | HARVEY-COLLINS        |
      | KIEHN, BLICK AND FUNK |
      | KUHIC AND SONS        |
      | REYNOLDS-HALVORSON    |
      | STIEDEMANN AND SONS   |
      | WILLIAMSON GROUP      |
