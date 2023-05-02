Given('I sign in and navigate to the start page for the {string} framework in {string} without details') do |framework, service|
  visit "/#{service.gsub(' ', '-')}/#{framework}/sign-in"
  update_banner_cookie(true)
  step 'I am a user without buyer details'
  step 'I sign in'
  step "I am on the 'Manage your details' page"
end

# Buyer details related steps

Then('I should see the postcode error message for buyer details') do
  expect(facilities_management_page.buyer_details.postcode_error_message).to have_text('Enter a valid postcode, for example SW1A 1AA')
end

Then('I check {string} for the sector') do |option|
  facilities_management_page.buyer_details.sector.send(option.to_sym).choose
end

Then('I check {string} for being contacted') do |option|
  facilities_management_page.buyer_details.contact_opt_in.send(option.to_sym).choose
end

Then('the following buyer details have been entered:') do |buyer_details_table|
  buyer_details_table.raw.to_h.each do |field, value|
    case field
    when 'Sector'
      expect(facilities_management_page.buyer_details.sector.send(value.to_sym)).to be_checked
    when 'Contact opt in'
      expect(facilities_management_page.buyer_details.contact_opt_in.send(value.to_sym)).to be_checked
    when 'Organisation address'
      expect(facilities_management_page.buyer_details.send(field.to_sym)).to have_content value
    else
      expect(facilities_management_page.buyer_details.send(field.to_sym).value).to eq value
    end
  end
end

Then('I change my contact detail address') do
  facilities_management_page.buyer_details.change_address.click
end

Then('I select {string} from the address drop down') do |address|
  facilities_management_page.buyer_details.address_drop_down.find(:option, address).select_option
end

# Quick view journey steps

Then('the facilities management basket should say {string}') do |basket_text|
  expect(facilities_management_page.quick_view.basket.selection_count).to have_content(basket_text)
end

Then('the remove all link should not be visible') do
  expect(facilities_management_page.quick_view.basket.remove_all).not_to be_visible
end

Then('the remove all link should be visible') do
  expect(facilities_management_page.quick_view.basket.remove_all).to be_visible
end

Then('the following items should appear in the facilities management basket:') do |items|
  expect(facilities_management_page.quick_view.basket.selection.map(&:text)).to match_array(items.raw.flatten)
end

Then('I select all for {string}') do |item_group|
  page.find("[data-sectionname='#{item_group}']").find('input[name="section-checkbox_select_all"]').check
end

Then('select all {string} be checked for {string}') do |status, section|
  case status
  when 'should'
    expect(page.find("[data-sectionname='#{section}']").find('input[name="section-checkbox_select_all"]')).to be_checked
  when 'should not'
    expect(page.find("[data-sectionname='#{section}']").find('input[name="section-checkbox_select_all"]')).not_to be_checked
  end
end

When('I remove the following items from the facilities management basket:') do |items|
  items.raw.flatten.each do |item|
    facilities_management_page.quick_view.basket.selection(text: item).first.find(:xpath, '../div/span/a').click
  end
end

Given('I click on the service specification for {string}') do |service_name|
  facilities_management_page.find('label', text: service_name).find('a').click
end

Then('the page sub title is {string}') do |sub_title|
  expect(facilities_management_page.service_specification.sub_title).to have_content(sub_title)
end

Then('The service name and code is {string}') do |service_name_and_code|
  expect(facilities_management_page.service_specification.service_name_and_code).to have_content(service_name_and_code)
end

Then('there {string} generic requirements') do |option|
  case option
  when 'are'
    expect(facilities_management_page).to have_css('details.govuk-details')
  when 'are not'
    expect(facilities_management_page).not_to have_css('details.govuk-details')
  end
end

Given('I switch to the newly opened tab') do
  Capybara.page.driver.browser.switch_to.window Capybara.page.driver.browser.window_handles.last
end

Then('I enter {string} for the annual contract cost') do |value|
  facilities_management_page.quick_view.annual_contract_value.set(value)
end

Then('I should be in sub-lot {string}') do |sub_lot|
  expect(facilities_management_page.quick_view.sub_lot).to have_content("Sub-lot #{sub_lot}")
end

Then('I should see the following {string} in the selection summary:') do |option, selection_summary_table|
  case option
  when 'services', 'regions'
    facilities_management_page.quick_view.selection_summary.send(option.to_sym).selection.zip(selection_summary_table.raw.flatten).each do |element, expected_value|
      expect(element).to have_content(expected_value)
    end
  when 'annual contract cost'
    expect(facilities_management_page.quick_view.selection_summary.send(option.to_sym).selection).to have_content(selection_summary_table.raw.flatten.first)
  end
end

Given('I change the {string} from the selection summary') do |option|
  facilities_management_page.quick_view.selection_summary.send(option.to_sym).change.click
end

Then('I enter {string} into the contract name field') do |contract_name|
  @contract_name_id = SecureRandom.uuid
  facilities_management_page.quick_view.contract_name_field.set("#{contract_name} #{@contract_name_id}")
end

Then('the procurement name is shown to be {string}') do |contract_name|
  expect(page.find_by_id('procurement-subtitle')).to have_content("#{contract_name} #{@contract_name_id}")
end

Then('the procurement {string} is on the dashboard') do |contract_name|
  expect(facilities_management_page).to have_link("#{contract_name} #{@contract_name_id}")
end

Given('I have a search and I record the name') do
  step 'I click on "View your saved searches"'
  step 'I am on the "Saved searches" page'

  procurement_names = facilities_management_page.procurement.procurement_names

  if procurement_names.length.positive?
    @taken_contract_name = procurement_names[0].find('a').text
  else
    visit '/facilities-management/RM6232/procurements/new?journey=facilities-management&annual_contract_value=500000&region_codes%5B%5D=UKC1&service_codes%5B%5D=E.1'

    @taken_contract_name = "Taken contract name #{SecureRandom.uuid}"

    facilities_management_page.quick_view.contract_name_field.set(@taken_contract_name)

    step 'I click on "Save and continue"'
    step 'I am on the "What do I do next?" page'
    step "the procurement name is shown to be '#{@taken_contract_name}'"
  end

  visit '/facilities-management/RM6232'
end

Then('I enter the taken contract name into the contract name field') do
  facilities_management_page.quick_view.contract_name_field.set(@taken_contract_name)
end

# Procurement journey steps

Given('I have a procurement with the name {string}') do |contract_name|
  visit '/facilities-management/RM6232/procurements/new?journey=facilities-management&annual_contract_value=500000&region_codes%5B%5D=UKC1&service_codes%5B%5D=E.1'
  step "I enter '#{contract_name}' into the contract name field"
  step 'I click on "Save and continue"'
  step 'I am on the "What do I do next?" page'
end

When('the contract number is visible with the contract name {string}') do |contract_name|
  expect(page.find('#main-content > div:nth-child(2) > div > span')).to have_content("#{contract_name} #{@contract_name_id} - RM6232")
  expect(page.find('.ccs-panel__body')).to have_content('RM6232')
end

Then('the facilities management file for {string} is downloaded with the {string} extension') do |contract_name, file_extension|
  download_file_name = DownloadHelpers.download_file_name
  filename = "Supplier shortlist (#{contract_name} #{@contract_name_id})"

  expect(download_file_name).to start_with(filename)
  expect(download_file_name).to end_with(".#{file_extension}")
end

Then('the selected facilities management suppliers are:') do |suppliers|
  supplier_elements = facilities_management_page.quick_view.suppliers
  supplier_names = suppliers.raw.flatten

  expect(supplier_elements.length).to eq supplier_names.length

  supplier_elements.zip(supplier_names).each do |actual, expected|
    expect(actual).to have_content expected
  end
end
