# frozen_string_literal: true

require 'cucumber/rspec/doubles'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

if ENV.fetch('CUCUMBER_ACCESSIBILITY', nil)
  require 'axe-capybara'
  require 'axe-cucumber-steps'
end

require 'byebug'
require 'active_support/all'

# Allows us to use site prism in our tests
require_relative '../support/pages'

World(Pages)

# Set the time zone
Time.zone = 'London'

# We can set the config from the environments.<ENV>.yml file
test_env = ENV.fetch('TEST_ENV', 'local')

config_filename = "config/environment.#{test_env}.yml"

class MissingConfigFileError < StandardError
  def initialize(missing_file_name)
    super("Could not find config file with name: '#{missing_file_name}'")
  end
end

raise MissingConfigFileError, config_filename unless File.file?(config_filename)

config = YAML.load_file('config/environment.shared.yml')[test_env].merge(YAML.load_file("config/environment.#{test_env}.yml"))

ENV['BUYER_EMAIL']                ||= config['users']['buyer']['email']
ENV['BUYER_PASSWORD']             ||= config['users']['buyer']['password']
ENV['BUYER_NO_DETAILS_EMAIL']     ||= config['users']['buyer_no_details']['email']
ENV['BUYER_NO_DETAILS_PASSWORD']  ||= config['users']['buyer_no_details']['password']
ENV['ADMIN_EMAIL']                ||= config['users']['admin']['email']
ENV['ADMIN_PASSWORD']             ||= config['users']['admin']['password']

ENV['TEST_RUN_ID'] = SecureRandom.uuid

# Set the Capybara config
Capybara.app_host = config['host']

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Firefox::Options.new

  options.add_argument('-headless') if ENV.fetch('HEADLESS', 'true') == 'true'

  options.add_preference('browser.download.folderList', 2)
  options.add_preference('browser.download.dir', DownloadHelpers.download_path)

  Capybara::Selenium::Driver.new(app, browser: :firefox, options:)
end

Capybara.default_driver = :selenium

Capybara.ignore_hidden_elements = false
