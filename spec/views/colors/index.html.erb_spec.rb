require 'spec_helper'

describe "colors/index" do
  before(:each) do
    assign(:colors, [
      stub_model(Color),
      stub_model(Color)
    ])
  end

  it "renders a list of colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
