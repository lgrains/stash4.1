require 'spec_helper'

describe "listing_images/show" do
  before(:each) do
    @listing_image = assign(:listing_image, stub_model(ListingImage))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
