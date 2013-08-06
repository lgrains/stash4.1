When(/^I enter the following address data:$/) do |table|
  table.hashes.each do |hash|
    step  %{I fill in "address_line_1" with "#{hash[:line_1]}"}
    step  %{I fill in "address_city" with "#{hash[:city]}"}
    step  %{I fill in "address_state" with "#{hash[:state]}"}
    step  %{I fill in "address_zip_code" with "#{hash[:zip_code]}"}
    step  %{I press "Create Address"}
  end
end

