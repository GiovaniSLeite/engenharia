Given(/^I'm logged as "([^"]*)" with "([^"]*)" in the inicial page$/) do |arg1, arg2|
  visit "https://dobro-ou-nada-giovanileite.c9users.io/"
  click_on "entrar-banner-bloco-home"
  fill_in "usr-login", with: arg1
  fill_in "psw-login", with: arg2
  click_on "btn-login"
end

When(/^I fill the fields$/) do
    fill_in "bet_name", with: "Marcus vai ser " << Faker::Company.profession
    fill_in "bet_stake", with: 10
end