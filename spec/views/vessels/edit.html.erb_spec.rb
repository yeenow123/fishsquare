require 'rails_helper'

RSpec.describe "vessels/edit", :type => :view do
  before(:each) do
    @vessel = assign(:vessel, Vessel.create!(
      :check_in_id => 1,
      :vessel_type => "MyString",
      :vessel_number => "MyString",
      :vessel_name => "MyString",
      :estimated_crew => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit vessel form" do
    render

    assert_select "form[action=?][method=?]", vessel_path(@vessel), "post" do

      assert_select "input#vessel_check_in_id[name=?]", "vessel[check_in_id]"

      assert_select "input#vessel_vessel_type[name=?]", "vessel[vessel_type]"

      assert_select "input#vessel_vessel_number[name=?]", "vessel[vessel_number]"

      assert_select "input#vessel_vessel_name[name=?]", "vessel[vessel_name]"

      assert_select "input#vessel_estimated_crew[name=?]", "vessel[estimated_crew]"

      assert_select "textarea#vessel_notes[name=?]", "vessel[notes]"
    end
  end
end
