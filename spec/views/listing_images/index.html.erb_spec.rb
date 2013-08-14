require 'spec_helper'

describe "listing_images/index" do
  before(:each) do
    assign(:listing_images, [
      stub_model(ListingImage),
      stub_model(ListingImage)
    ])
  end

  it "renders a list of listing_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
