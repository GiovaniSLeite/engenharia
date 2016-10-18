


Given(/^I am on the homepage$/) do
  visit "https://dobro-ou-nada-giovanileite.c9users.io/"
  click_on "entrar-banner-bloco-home"
end

When(/^I log in with "([^"]*)" username and "([^"]*)" password$/) do |login, password|
  fill_in "usr-login", with: login
  fill_in "psw-login", with: password
  click_on "btn-login"
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(page).to have_content message
end