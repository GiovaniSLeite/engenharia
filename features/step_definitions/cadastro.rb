Given(/^I am on the sign up page$/) do
  visit "https://dobro-ou-nada-giovanileite.c9users.io/usuarios/cadastro"
end

When(/^I sign up with "([^"]*)" as name, "([^"]*)" as e\-mail and "([^"]*)" for password$/) do |name, email, pass|
  fill_in "usuario_name", with: name
  fill_in "usuario_email", with: email
  fill_in "usuario_access_token", with: pass
  click_on "button_cad"
end