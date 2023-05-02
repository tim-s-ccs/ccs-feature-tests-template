Feature: Facilities Management - Cookie settings

  Background: Go to start page
    Given I go to the 'facilities management' start page for 'RM6232'

  Scenario: Cookies policy
    When I click on 'Cookie policy'
    Then I am on the 'Details about cookies on Crown Marketplace' page
    And I click on 'Back to start'
    And I am on the 'Find a facilities management supplier' page

  Scenario: Cookies settings
    When I click on 'Cookie settings'
    Then I am on the 'Cookies on Crown Marketplace' page
    And I click on 'Back to start'
    And I am on the 'Find a facilities management supplier' page

  Scenario: Accessibility statement
    When I click on 'Accessibility statement'
    Then I am on the 'Facilities Management (FM) Accessibility statement' page
    And I click on 'Back to start'
    And I am on the 'Find a facilities management supplier' page
