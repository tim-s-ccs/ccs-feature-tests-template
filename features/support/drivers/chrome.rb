Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  options.add_argument('-headless') if ENV.fetch('HEADLESS', 'true') == 'true'
  options.add_preference(
    :download,
    {
      prompt_for_download: false,
      default_directory: DownloadHelpers.download_path,
      folder_list: 2
    }
  )

  Capybara::Selenium::Driver.new(app, browser: :chrome, options:)
end
