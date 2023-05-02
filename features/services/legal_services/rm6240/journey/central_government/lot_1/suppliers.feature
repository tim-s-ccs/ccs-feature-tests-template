@skip-production
Feature: Legal services - Central governemnt - Lot 1 - Suppliers

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

  Scenario: Check the supplier data - SME
    Given I click on 'RUTHERFORD, LANGOSH AND GREEN'
    Then I am on the 'RUTHERFORD, LANGOSH AND GREEN' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£330.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£275.00'
    And the 'Solicitor, Associate' hourly rate is '£215.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£205.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And the 'LMP (Legal project manager)' hourly rate is '£250'
    And the contact details for the supplier are:
      | green_rutherford_and_langosh@willms.io        |
      | 351-615-4862 x7567                            |
      | http://hudson.co/thao_senger                  |
      | 6910 Abram Turnpike, South Graciela, CA 51972 |

  Scenario: Check the supplier data - Non SME
    Given I click on 'GERLACH AND SONS'
    Then I am on the 'GERLACH AND SONS' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£160.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£145.00'
    And the 'Solicitor, Associate' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£110.00'
    And the 'Trainee' hourly rate is '£60.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£80.00'
    And there is no LMP (Legal project manager) hourly rate
    And the contact details for the supplier are:
      | and.gerlach.sons@crona.co                         |
      | 535-621-4440 x224                                 |
      | http://gislason.name/michal_lueilwitz             |
      | 5063 Lael Points, Lake Veliaburgh, PA 42674-0350  |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension