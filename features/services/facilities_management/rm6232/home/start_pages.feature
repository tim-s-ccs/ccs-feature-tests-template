Feature: Facilities Management - Start pages

  Scenario: Buyer sees start page
    When I go to the 'facilities management' start page for 'RM6232'
    Then I am on the 'Find a facilities management supplier' page

  Scenario: Buyer navigatis to sign in page
    When I go to the 'facilities management' start page for 'RM6232'
    And I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    Then I am on the 'Sign in to your account' page

  Scenario: Logging on user without details
    When I go to the 'facilities management' start page for 'RM6232'
    And I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    Given I am a user without buyer details
    Then I sign in
    And I am on the 'Manage your details' page

  Scenario: Logging on user with details
    When I go to the 'facilities management' start page for 'RM6232'
    And I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    Then I sign in
    And I am on the 'Your account' page

  @smoulder
  Scenario: Viewing the home page
    When I go to the 'facilities management' start page for 'RM6232'
    And I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    Then I sign in
    And I am on the 'Your account' page
    Then the following content should be displayed on the page:
      | Your account                                                              |
      | Search for suppliers                                                      |
      | Find a shortlist of suppliers who can provide services to your locations  |
      | View your saved searches                                                  |
      | Open your dashboard to view your previously saved searches                |
      | Manage my details                                                         |
      | Update and edit your contact details                                      |
      | View further information about the Facilities Management and              |
      | Workplace Services framework RM6232 (opens in a new tab)                  |
