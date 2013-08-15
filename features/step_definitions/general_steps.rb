When /^I attach "([^\"]*)" image to the "([^\"]*)" file field$/ do |filename, field|
  type = filename.split(".")[1]

  if type == "jpg"
    type = "image/jpeg"
  end

  attach_file field, File.join(RAILS_ROOT, test_asset_path, filename), type
end