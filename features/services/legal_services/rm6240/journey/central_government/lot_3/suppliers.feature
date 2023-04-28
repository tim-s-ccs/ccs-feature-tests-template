@skip-production
Feature: Legal services - Central governemnt - Lot 3 - Suppliers

  Background: Login and then navigate to the supplier results page
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And the sub title is 'Lot 3 - Transport rail legal services'
    And I should see that '10' suppliers can provide legal services
    And the selected legal service suppliers are:
      | CORKERY-BLANDA                  |
      | CRUICKSHANK, RUECKER AND SAWAYN |
      | EBERT, BASHIRIAN AND MILLER     |
      | GRAHAM, REICHEL AND KULAS       |
      | HANSEN, REMPEL AND HEANEY       |
      | HESSEL-QUITZON                  |
      | JASKOLSKI, VONRUEDEN AND DOOLEY |
      | MACGYVER-SCHOEN                 |
      | WEISSNAT INC                    |
      | WYMAN-O'CONNER                  |

  Scenario: Check the supplier data - SME
    Given I click on 'CORKERY-BLANDA'
    Then I am on the 'CORKERY-BLANDA' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£325.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£285.00'
    And the 'Solicitor, Associate' hourly rate is '£210.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£190.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And the 'LMP (Legal project manager)' hourly rate is '£285.00'
    And the contact details for the supplier are:
      | blanda.corkery@hamill.name                    |
      | 216-727-2175 x630                             |
      | http://hills.biz/sybil.bogan                  |
      | 6394 Bahringer Locks, North Bryanna, KS 87911 |

  Scenario: Check the supplier data - Non SME
    Given I click on 'MACGYVER-SCHOEN'
    Then I am on the 'MACGYVER-SCHOEN' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£335.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£255.00'
    And the 'Solicitor, Associate' hourly rate is '£210.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£165.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And there is no LMP (Legal project manager) hourly rate
    And the contact details for the supplier are:
      | macgyver.schoen@langworth.co                      |
      | (264) 698-0248 x4478                              |
      | http://ritchie.biz/clint.kunde                    |
      | 2945 Charlie Estates, Lake Marhta, RI 79222-8844  |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension
