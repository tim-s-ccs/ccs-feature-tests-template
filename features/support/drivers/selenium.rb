Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Firefox::Options.new

  options.add_argument('-headless') if ENV.fetch('HEADLESS', 'true') == 'true'

  options.add_preference('browser.download.folderList', 2)
  options.add_preference('browser.download.dir', DownloadHelpers.download_path)

  Capybara::Selenium::Driver.new(app, browser: :firefox, options:)
end
