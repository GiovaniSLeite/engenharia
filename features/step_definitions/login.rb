


Given(/^I am on the homepage$/) do
  visit "https://dobroounada.herokuapp.com/"
  click_on "entrar-banner-bloco-home"
end

When(/^I login with "([^"]*)" username and "([^"]*)" password$/) do |login, password|
  fill_in "usr-login", with: login
  fill_in "psw-login", with: password
  click_on "btn-login"
end

Then(/^I should see the panel page$/) do
  expect(page).to have_content "Olá, você é o usuário numero"
end