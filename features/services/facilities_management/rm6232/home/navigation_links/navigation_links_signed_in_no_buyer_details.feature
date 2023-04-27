Feature: Facilities Management - Navigation links when signed in - without buyer details

  Background: I navigate to the start page
    When I go to the 'facilities management' start page for 'RM6232'
    And I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    Given I am a user without buyer details
    Then I sign in
    And I am on the 'Manage your details' page

  @smoulder
  Scenario: Buyer details - Sign out
    And I should see the following navigation links:
      | Sign out    |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page

  Scenario: Buyer details - Add address - Sign out
    And I enter the following details into the form:
      | Postcode  | ST161AA |
    And I click on 'Find address'
    And I click on 'Enter address manually, if you can’t find address'
    Then I am on the 'Add address' page
    And I should see the following navigation links:
      | Sign out    |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page
