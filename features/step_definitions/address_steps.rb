When(/^I enter the following address data:$/) do |table|
  table.hashes.each do |hash|
    step  %{I fill in "address_line_1" with "#{hash[:line_1]}"}
    step  %{I fill in "address_city" with "#{hash[:city]}"}
    step  %{I fill in "address_state" with "#{hash[:state]}"}
    step  %{I fill in "address_zip_code" with "#{hash[:zip_code]}"}
    step  %{I press "Create Address"}
  end
end

Given(/^the users have the following addresses:$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    email = hash.delete("email")
    u_id = User.find_by_email(email).id
    address = Fabricate(:address, hash )
    address.user_id = u_id
    address.save
  end
end

Then(/^I should see$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    hash.each do |key, value |
      step %{I should see "#{value}"}
    end
  end
end
