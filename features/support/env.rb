require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara-webkit'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :webkit
 # config.app_host = 'https://www.google.com' # change url
end

Capybara::Webkit.configure do |config|
    config.allow_url("https://dobroounada.herokuapp.com/")
    config.allow_url("maxcdn.bootstrapcdn.com")
    config.allow_url("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js")
    config.allow_url("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css")
    config.allow_url("https://dobro-ou-nada-giovanileite.c9users.io/")
end