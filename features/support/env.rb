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

# Allows us to run tests on different browsers
Dir['../support/drivers/*.rb'].each { |file| require file }

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

# TODO: You should replace this with your project user types
ENV['BUYER_EMAIL']    ||= config.dig('users', 'buyer', 'email')
ENV['BUYER_PASSWORD'] ||= config.dig('users', 'buyer', 'password')
ENV['ADMIN_EMAIL']    ||= config.dig('users', 'admin', 'email')
ENV['ADMIN_PASSWORD'] ||= config.dig('users', 'admin', 'password')

ENV['TEST_RUN_ID'] = SecureRandom.uuid

# Set the Capybara config
Capybara.app_host = config['host']

ENV['DRIVER'] ||= 'selenium'

Capybara.default_driver = ENV['DRIVER'].to_sym

Capybara.ignore_hidden_elements = false
