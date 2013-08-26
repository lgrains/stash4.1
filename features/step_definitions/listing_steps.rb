Given(/^a listing exists with name "(.*?)"$/) do |name|
  Fabricate(:listing, name: name)
end

Given(/^I fill in the create listing form with valid listing data$/) do
  @listing_attributes = Fabricate.build(:listing)
  within("#listing_fields") do
    fill_in('listing_name', with: @listing_attributes.name)
    select(@listing_attributes.listing_type, from: "listing_listing_type")
    attach_file('listing_image', @listing_attributes.image.path)
    fill_in('listing_description', with: @listing_attributes.description)
    fill_in('listing_colors', with: @listing_attributes.colors.join(', '))
    fill_in('listing_length', with: @listing_attributes.length)
    select(@listing_attributes.length_units, from: "listing_length_units")
    fill_in('listing_width', with: @listing_attributes.width_units)
    select(@listing_attributes.width_units, from: "listing_width_units")
  end
  within(".actions") do
    find_button('Create Listing').click
  end
end

# When(/^I fill in the following fields:$/) do |table|
#   # table is a Cucumber::Ast::Table
#   table.hashes.each do |hash |
#     hash.each do |key, value|
#       binding.pry
#       step %{ I fill in "user_#{key.downcase}" with "#{value}" }
#     end
#   end
# end

# When(/^I choose the image "(.*?)"$/) do |image_name|
#   attach_file('listing_image', File.join(Rails.root, "/app/assets/images/#{image_name}"))
#   # step %{I press "Choose File"}
# end

Then(/^I can see the details for "(.*?)"$/) do |name|
  listing = Listing.find_by_name(name)
  step %{I should see "#{name}"}
  step %{I should see "#{listing.listing_type}"}
  step %{I should see "#{listing.description}"}
  step %{I should see "#{listing.length}"}
  step %{I should see "#{listing.length_units}"}
  step %{I should see "#{listing.width}"}
  step %{I should see "#{listing.width_units}"}
  step %{I should see "#{listing.price}"}
  step %{I should see "#{listing.colors.join(', ')}"}
  step %{I should see the image "#{listing.image}"}
end

Then(/^I should see the image "(.*?)"$/) do |image_name|
  if page.respond_to? :should
    page.should have_selector("img[src$='#{image_name}']")
  else
    assert page.has_selector?("img[src$='#{image_name}']")
  end
end