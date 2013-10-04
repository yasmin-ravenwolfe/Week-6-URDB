require 'spec_helper'

describe "showings/new" do
  before(:each) do
    assign(:showing, stub_model(Showing,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new showing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", showings_path, "post" do
      assert_select "input#showing_location[name=?]", "showing[location]"
    end
  end
end
