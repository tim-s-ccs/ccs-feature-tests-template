Feature: Forgot my password - Facilities Management - RM6232 - Validations

  Scenario Outline: I forgot my password - email invalid
    When I go to the 'facilities management' start page for 'RM6232'
    Then I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    When I click on 'I’ve forgotten my password'
    Then I am on the 'Reset password' page
    And I enter the following details into the form:
      | email | <value> |
    And I click on 'Send reset email'
    Then I should see the following error messages:
      | Enter your email address in the correct format, like name@example.com |

    Examples:
      | value           |
      |                 |
      | fake@email      |
      | fake email      |
