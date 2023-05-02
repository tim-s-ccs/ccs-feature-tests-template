@skip-production
Feature: Facilities Management - RM6232 - Admin - Create new upload - Validations

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6232' framework in 'facilities management'
    Then I am on the 'RM6232 administration dashboard' page
    And I click on 'Supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'Manage the supplier data'
    Then I am on the 'Manage supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  Scenario: No files uploaded
    And I click on 'Upload data'
    Then I should see the following error messages:
      | Select the 'Supplier details' file  |
      | Select the 'Supplier services' file |
      | Select the 'Supplier regions' file  |

  Scenario: Incorrect extension uploaded
    And I select the file 'features/services/facilities_management/rm6232/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier details'
    And I select the file 'features/services/facilities_management/rm6232/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier services'
    And I select the file 'features/services/facilities_management/rm6232/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier regions'
    And I click on 'Upload data'
    Then I should see the following error messages:
      | The 'Supplier details' file must be an XLSX   |
      | The 'Supplier services' file must be an XLSX  |
      | The 'Supplier regions' file must be an XLSX   |

  Scenario: Upload invalid spreadsheets
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier services'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier regions'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the upload to finish
    And the status of the upload is 'failed'
    And the details for the failed upload are:
      | The 'Supplier details' file is missing sheets   | The 'Supplier details' file should have 1 sheet named 'RM6232 Suppliers Details'          |
      | The 'Supplier services' file is missing sheets  | The 'Supplier services' file should have 9 sheets with the following names:               |
      |                                                 | 'Lot 1a', 'Lot 1b', 'Lot 1c', 'Lot 2a', 'Lot 2b', 'Lot 2c', 'Lot 3a', 'Lot 3b', 'Lot 3c'  |
      | The 'Supplier regions' file is missing sheets   | The 'Supplier regions' file should have 9 sheets with the following names:                |
      |                                                 | 'Lot 1a', 'Lot 1b', 'Lot 1c', 'Lot 2a', 'Lot 2b', 'Lot 2c', 'Lot 3a', 'Lot 3b', 'Lot 3c'  |
