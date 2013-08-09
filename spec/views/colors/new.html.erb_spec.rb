require 'spec_helper'

describe "colors/new" do
  before(:each) do
    assign(:color, stub_model(Color).as_new_record)
  end

  it "renders new color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colors_path, "post" do
    end
  end
end
