Given(/^I am logged in as an admin$/) do
  Fabricate(:user, is_admin: true)
end