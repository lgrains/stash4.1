require 'spec_helper'

describe "colors/edit" do
  before(:each) do
    @color = assign(:color, stub_model(Color))
  end

  it "renders the edit color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", color_path(@color), "post" do
    end
  end
end
