Then('I select the file {string} to upload for {string}') do |filename, filed|
  page.attach_file(filed, filename)
end

Then('I wait no longer than {int} seconds for the upload to finish') do |number_of_seconds|
  Timeout.timeout(number_of_seconds) do
    sleep 1 until admin_page.upload_status.text != 'in progress'
  end
end

Then('I wait no longer than {int} seconds for the supply teachers upload status to change from {string}') do |number_of_seconds, upload_status|
  Timeout.timeout(number_of_seconds) do
    sleep 1 until admin_page.supply_teachers.upload_status.text != upload_status
  end
end

Then('the status of the upload is {string}') do |upload_status|
  expect(admin_page.upload_status).to have_content(upload_status)
end

Then('the status of the supply teachers upload is {string}') do |upload_status|
  expect(admin_page.supply_teachers.upload_status).to have_content(upload_status)
end

Then('the details for the failed upload are:') do |issues_and_details_table|
  issues_and_details = []
  index = -1

  issues_and_details_table.raw.each do |issue_and_detail|
    if issue_and_detail[0].blank?
      issues_and_details[index][:detail] << issue_and_detail[1]
    else
      issues_and_details << { issue: issue_and_detail[0], detail: [issue_and_detail[1]] }
      index += 1
    end
  end

  upload_issues_table = @framework == 'RM6232' ? admin_page.upload_issues_table_fm : admin_page.upload_issues_table

  expect(upload_issues_table.length).to eq issues_and_details.length

  issues_and_details.zip(upload_issues_table).each do |expected, actual|
    expect(actual.issue).to have_content(expected[:issue])
    expect(actual.detail).to have_content(expected[:detail].join(' '))
  end
end

Then('the details for the failed supply teachers upload are:') do |fail_reason|
  expect(admin_page.supply_teachers.fail_reason).to have_content(fail_reason.raw.flatten.first)
end

When('I download the {string} file') do |filename|
  admin_page.find('td.govuk-table__cell', text: filename).find(:xpath, '..').find('a', text: 'Download').click
end

When('I download the {string} supply teachers file') do |filename|
  admin_page.find('th.govuk-table__header', text: filename).find(:xpath, '..').find('a', text: 'Download').click
end

Then('I click on the first upload session with status {string}') do |status|
  admin_page.first('td.govuk-table__cell', text: status).find(:xpath, '../td[1]/a').click
end

Then('I record the session name') do
  @session_name = admin_page.find('h1').text[-8..]
end

Then('I navigate to my recorded session page') do
  click_on "Upload session ##{@session_name}"
  step "I am on the 'Upload session #{@session_name}' page"
end
