Given(/^I am logged in as an admin$/) do
  Fabricate(:user, is_admin: true)
end

When /^I upload an image through the Edit form$/ do
  step %{I attach the file "spec/fixtures/avatar1.jpg" to "user_avatar"}
  step %{I press "Update User"}
end

When(/^I enter the following:$/) do |table|
  table.hashes.each do |hash|
    hash.each do |key, value|
      if key == 'state'
        step %{I select "#{value}" from "user_#{key}"}
      else
        step %{I fill in "user_#{key}" with "#{value}"}
      end
    end
    step %{I press "Update User"}
  end
end

Then(/^I should see the following "(.*?)"$/) do |arg_list|
  arg_array = arg_list.split(",")
  arg_array.each do |a|
    step %{I should see "#{a}"}
  end
end

Then(/^I should see the following:$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    hash.each do |key, value|
      step %{I should see "#{value}" within "user_#{key}"}
    end
  end
end