require 'spec_helper'

describe "showings/edit" do
  before(:each) do
    @showing = assign(:showing, stub_model(Showing,
      :location => "MyString"
    ))
  end

  it "renders the edit showing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", showing_path(@showing), "post" do
      assert_select "input#showing_location[name=?]", "showing[location]"
    end
  end
end
