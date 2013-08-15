Then /^I should see the image "([^\"]*)" with alt "([^\"]*)"$/ do |id, alt_name|
  image = find("##{id}")
  image["alt"].should eql(alt_name)
end
