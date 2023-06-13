@skip-production
Feature: Legal services - Central governemnt - Lot 2 - Suppliers

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

  Scenario: Check the supplier data - SME
    Given I click on 'BERNHARD, WEHNER AND ORN'
    Then I am on the 'BERNHARD, WEHNER AND ORN' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£160.00'
    And the 'Solicitor, Associate' hourly rate is '£150.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£135.00'
    And the 'Trainee' hourly rate is '£65.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£65.00'
    And the 'LMP (Legal project manager)' hourly rate is '£200.00'
    And the contact details for the supplier are:
      | bernhard.and.wehner.orn@kuvalis.com                     |
      | 957.291.1622 x25202                                     |
      | http://orn.org/patrice.connelly                         |
      | Suite 264 78774 Sandy Hills, West Melvinfurt, AK 29387  |

  Scenario: Check the supplier data - Non SME
    Given I click on 'MOSCISKI, LABADIE AND REMPEL'
    Then I am on the 'MOSCISKI, LABADIE AND REMPEL' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£135.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£125.00'
    And the 'Solicitor, Associate' hourly rate is '£115.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£105.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And the 'LMP (Legal project manager)' hourly rate is '£90.00'
    And the contact details for the supplier are:
      | and_rempel_labadie_mosciski@kerluke-halvorson.biz |
      | 1-208-997-2077 x593                               |
      | http://mann.co/elza                               |
      | 9588 Ziemann Groves, Nelleland, ID 15008          |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension
