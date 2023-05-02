@accessibility
Feature: Facilities Management - Start pages - With an unrecognised framework

  Scenario: Go to an unrecognised famework in the admin section
    When I go to '/facilities-management/RM1012/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    Then the page should be axe clean
