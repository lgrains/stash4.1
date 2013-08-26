
Fabricator(:listing) do
  name "My Listing"
  listing_type "Offer"
  description "Thimbleberries"
  length 1.25
  length_units "Yards"
  width 44
  width_units "Inches"
  price 5.0
  colors ["red","blue","yellow"]
  image {
    ActionDispatch::Http::UploadedFile.new(
      :tempfile => File.new(Rails.root.join("app/assets/images/doodle_zoo.jpg")),
      :filename => File.basename(File.new(Rails.root.join("app/assets/images/doodle_zoo.jpg")))
    )}
end