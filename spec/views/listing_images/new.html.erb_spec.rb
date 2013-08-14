require 'spec_helper'

describe "listing_images/new" do
  before(:each) do
    assign(:listing_image, stub_model(ListingImage).as_new_record)
  end

  it "renders new listing_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", listing_images_path, "post" do
    end
  end
end
