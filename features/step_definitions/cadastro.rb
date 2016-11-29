Given(/^I am on the sign up page$/) do
  visit "https://dobro-ou-nada-giovanileite.c9users.io/usuarios/cadastro"
end

When(/^I sign up with "([^"]*)" as name, "([^"]*)" as e\-mail and "([^"]*)" for password$/) do |name, email, pass|
  if name.eql? "Name"
    fill_in "usuario_name", with: Faker::Name.name
  else
    fill_in "usuario_name", with: name
  end
  
  if email.eql? "Email"
    fill_in "usuario_email", with: Faker::Internet.email
  else
    fill_in "usuario_email", with: email
  end
  
  fill_in "usuario_access_token", with: pass
  click_on "button_cad"
end