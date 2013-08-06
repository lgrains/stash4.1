Given /^I am not logged in$/ do
  visit(destroy_user_session_path)
end

Given /^I am logged in as "([^\"]*)"$/ do |user_email|
  user = User.find_by_email(user_email) || Fabricate(:user, :email => user_email)
  login(user)
end

When /^I logged out$/ do
  visit(destroy_user_session_path)
end

When /^I submit the sign up form with valid information$/ do
  within "form" do
    fill_in "Full name", :with => "First Last"
    fill_in "Zip", :with => "02110"
    fill_in "Email", :with => "new_user@bcm.tv"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "submit"
  end
end

When /^I submit the login form with email "([^\"]*)" and password "([^\"]*)"(?: and "([^\"]*)" remember me)?$/ do |email, password, checked|
  within "form" do
    fill_in "Email", :with => email
    fill_in "Password", :with => password
    check "Remember me" if checked == "checked"
    click_button "submit"
  end
end

When /^I submit the forgot password form with email address "([^\"]*)"$/ do |email|
  within "form" do
    fill_in "Email", :with => email
    click_button "Send me reset password instructions"
  end
end

When /^I submit the edit password form with a new password "([^\"]*)"$/ do |email|
  within "form" do
    fill_in "Password", :with => email
    fill_in "Password confirmation", :with => email
    click_button "Change my password"
  end
end

When /^I submit my profile with the following "([^\"]*)"$/ do |data|
  When %{I fill in the form with the following "#{data}"}
  click_button "submit"
end

When /^I click the change password link$/ do
  find('.profile_change_password').click
end

When /^I click the log in with Facebook link$/ do
  find(".facebook_login a").click
end

When /^I click the log in with Facebook link with failure$/ do
  OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
  find(".facebook_login a").click
end

Then /^I should see a devise error "([^\"]*)"$/ do |message|
  Then %{I should see "#{message}" within "#error_explanation"}
end

Then /^I should (not )?see the ajax form$/ do |status|
  if status
    page.should_not have_selector("#ajax_form .ajax_content")
  else
    page.should have_selector("#ajax_form .ajax_content")
  end
end

Then /^I should see "([^\"]*)" in the ajax form$/ do |text|
  within "#ajax_form" do
    page.should have_content(text)
  end
end

Then /^I should see edit profile fields$/ do
  ["user[email]", "user[password]", "user[password_confirmation]", "user[current_password]", "user[full_name]", "user[zip]"].each do |x|
    Then %{I should see the "#{x}" field in the form}
  end
end


def login(user)
  visit path_to("the login page")
  fill_in("Email", :with => user.email)
  fill_in("Password", :with => 'changeme')
  click_button("Sign in")
end

