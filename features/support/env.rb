require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara-webkit'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :webkit
 # config.app_host = 'https://www.google.com' # change url
end