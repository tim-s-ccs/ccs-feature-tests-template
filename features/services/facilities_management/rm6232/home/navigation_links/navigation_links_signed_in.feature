Feature: Facilities Management - Navigation links when signed in

  Background: I navigate to the start page
     Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'

  Scenario: Start page
    When I go to the 'facilities management' start page for 'RM6232'
    And I should see the following navigation links:
      | Sign out |

  Scenario Outline: Not permitted page
    And I go to the not permitted page for 'facilities management'
    And I should see the following navigation links:
      | My account  |
      | Sign out    |
    And I click on '<link_text>'
    And I am on the '<page_title>' page

    Examples:
      | link_text   | page_title              |
      | My account  | Your account            |
      | Sign out    | Sign in to your account |

  Scenario Outline: Cookies policy
    When I click on 'Cookie policy'
    Then I am on the 'Details about cookies on Crown Marketplace' page
    And I should see the following navigation links:
      | My account  |
      | Sign out    |
    And I click on '<link_text>'
    And I am on the '<page_title>' page

    Examples:
      | link_text   | page_title              |
      | My account  | Your account            |
      | Sign out    | Sign in to your account |

  Scenario Outline: Cookies settings
    When I click on 'Cookie settings'
    Then I am on the 'Cookies on Crown Marketplace' page
    And I should see the following navigation links:
      | My account  |
      | Sign out    |
    And I click on '<link_text>'
    And I am on the '<page_title>' page

    Examples:
      | link_text   | page_title              |
      | My account  | Your account            |
      | Sign out    | Sign in to your account |

  Scenario Outline: Accessibility statement
    When I click on 'Accessibility statement'
    Then I am on the 'Facilities Management (FM) Accessibility statement' page
    And I should see the following navigation links:
      | My account  |
      | Sign out    |
    And I click on '<link_text>'
    And I am on the '<page_title>' page

    Examples:
      | link_text   | page_title              |
      | My account  | Your account            |
      | Sign out    | Sign in to your account |

  @smoulder
  Scenario: Home page - Sign out
    And I should see the following navigation links:
      | Sign out      |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page

  Scenario Outline: Buyer details
    Then I click on 'Manage my details'
    Then I am on the 'Manage your details' page
    And I should see the following navigation links:
      | My account  |
      | Sign out    |
    And I click on '<link_text>'
    And I am on the '<page_title>' page

    Examples:
      | link_text   | page_title              |
      | My account  | Your account            |
      | Sign out    | Sign in to your account |

  Scenario Outline: Buyer details - Add address
    Then I click on 'Manage my details'
    Then I am on the 'Manage your details' page
    And I want to change my address
    And I click on 'Find address'
    And I click on 'Enter address manually, if you can’t find address'
    Then I am on the 'Add address' page
    And I should see the following navigation links:
      | My account  |
      | Sign out    |
    And I click on '<link_text>'
    And I am on the '<page_title>' page

    Examples:
      | link_text   | page_title              |
      | My account  | Your account            |
      | Sign out    | Sign in to your account |
