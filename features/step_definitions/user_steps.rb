Given(/^I am logged in as an admin$/) do
  Fabricate(:user, is_admin: true)
end




When(/^I enter the following:$/) do |table|
  table.hashes.each do |hash|
    hash.each do |key, value|
      step %{I fill in "user_#{key}" with "#{value}"}
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
