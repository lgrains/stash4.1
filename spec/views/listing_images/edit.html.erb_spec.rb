require 'spec_helper'

describe "listing_images/edit" do
  before(:each) do
    @listing_image = assign(:listing_image, stub_model(ListingImage))
  end

  it "renders the edit listing_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", listing_image_path(@listing_image), "post" do
    end
  end
end
