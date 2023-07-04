When('I go to {string}') do |uri|
  visit uri
end

Then('I am on the {string} page') do |title|
  expect(page.find('h1')).to have_content(title)
rescue NoMethodError
  expect(page.find('h1')).to have_content(title)
end

Then('the caption is {string}') do |caption|
  expect(page.find('span[class*=govuk-caption]')).to have_content(caption)
end

When('I click on {string}') do |button_text|
  click_on(button_text)
end

Then('I sign in') do
  # Create a user with the .create_user helper
  fill_in 'email', with: current_user.email
  fill_in 'password', with: current_user.password
  click_on 'Sign in'
end

Then('I should see the following error messages:') do |table|
  expect(page).to have_css('div.govuk-error-summary')
  expect(page.find('.govuk-error-summary__list').find_all('a').map(&:text).reject(&:empty?)).to eq table.raw.flatten
end

Then('I enter the following details into the form:') do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end

Given('I select {string}') do |item|
  choose item
end

Given('I check {string}') do |item|
  check item
end

When('I deselect the following items:') do |items|
  items.raw.flatten.each do |item|
    page.uncheck(item)
  end
end

Given('I click on the {string} back link') do |link_text|
  page.find('.govuk-back-link', text: link_text).click
end

Then('I click on the {string} button') do |button_text|
  page.find('.govuk-button', text: button_text).click
end

Then('the file {string} is downloaded with the {string} extension') do |filename, file_extension|
  download_file_name = DownloadHelpers.download_file_name

  expect(download_file_name).to start_with(filename)
  expect(download_file_name).to end_with(".#{file_extension}")
end

Then('I am on {string}') do |expected_path|
  expect(page).to have_current_path expected_path, ignore_query: true
end

Then('the following content should be displayed on the page:') do |table|
  page_text = page.find_by_id('main-content').text

  table.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

When('my cookies are disabled') do
  page.driver.browser.manage.delete_all_cookies
end

Then('I pause') do
  # byebug
  pending 'This step is used for debugging features'
end
