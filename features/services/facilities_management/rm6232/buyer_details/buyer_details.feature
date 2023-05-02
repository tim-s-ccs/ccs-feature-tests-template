@javascript
Feature: Facilities Management - RM6232 - Buyer details

  Background: Navigate to Buyer Details page
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    Then I click on 'Manage my details'
    Then I am on the 'Manage your details' page
    And the following buyer details have been entered:
      | Name                  | Automation Tester                     |
      | Job title             | Tester                                |
      | Telephone number      | 07123456789                           |
      | Organisation name     | Crown Commercial Service              |
      | Organisation address  | 90 Old Hall Street, Liverpool L3 9PP  |
      | Sector                | Government Policy                     |
      | Contact opt in        | Yes                                   |

  Scenario: I can change my address
    When I change my contact detail address
    And I enter the following details into the form:
      | Postcode  | ST16 1AA  |
    And I click on 'Find address'
    And I select 'The Goods Shed, Newport Road, Stafford' from the address drop down
    And the following buyer details have been entered:
      | Organisation address  | The Goods Shed, Newport Road, Stafford ST16 1AA |
    And I change my contact detail address
    And I enter the following details into the form:
      | Postcode  | L3 9PP  |
    And I click on 'Find address'
    And I select '90 Old Hall Street, Liverpoo' from the address drop down
    And the following buyer details have been entered:
      | Organisation address  | 90 Old Hall Street, Liverpool L3 9PP  |
    When I click on 'Save and continue'
    And I am on the 'Your account' page
    And I click on 'Manage my details'
    Then I am on the 'Manage your details' page
    And the following buyer details have been entered:
      | Name                  | Automation Tester                     |
      | Job title             | Tester                                |
      | Telephone number      | 07123456789                           |
      | Organisation name     | Crown Commercial Service              |
      | Organisation address  | 90 Old Hall Street, Liverpool L3 9PP  |
      | Sector                | Government Policy                     |
      | Contact opt in        | Yes                                   |

  @smoulder
  Scenario: Changes are kept when adding address manually
    And I enter the following details into the form:
      | Name              | Testy McTestface  |
      | Job title         | Tester            |
      | Telephone number  | 01610161016       |
      | Organisation name | Feel Good inc.    |
    And I check 'Local Community and Housing' for the sector
    And I check 'No' for being contacted
    And I change my contact detail address
    And I enter the following details into the form:
      | Postcode  | L3 9PP  |
    And I click on 'Find address'
    And I click on 'Enter address manually, if you can’t find address'
    Then I am on the 'Add address' page
    And I enter the following details into the form:
      | Building and street | 90 Old Hall Street  |
      | Town or city        | Liverpool           |
      | Postcode            | L3 9PP              |
    And I click on 'Save and continue'
    Then I am on the 'Manage your details' page
    And the following buyer details have been entered:
      | Name                  | Testy McTestface                      |
      | Job title             | Tester                                |
      | Telephone number      | 01610161016                           |
      | Organisation name     | Feel Good inc.                        |
      | Organisation address  | 90 Old Hall Street, Liverpool L3 9PP  |
      | Sector                | Local Community and Housing           |
      | Contact opt in        | No                                    |
