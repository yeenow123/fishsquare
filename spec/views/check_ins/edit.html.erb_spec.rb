require 'rails_helper'

RSpec.describe "check_ins/edit", :type => :view do
  before(:each) do
    @check_in = assign(:check_in, CheckIn.create!(
      :lat => 1.5,
      :lng => 1.5,
      :type => "",
      :fishing_type => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit check_in form" do
    render

    assert_select "form[action=?][method=?]", check_in_path(@check_in), "post" do

      assert_select "input#check_in_lat[name=?]", "check_in[lat]"

      assert_select "input#check_in_lng[name=?]", "check_in[lng]"

      assert_select "input#check_in_type[name=?]", "check_in[type]"

      assert_select "input#check_in_fishing_type[name=?]", "check_in[fishing_type]"

      assert_select "textarea#check_in_notes[name=?]", "check_in[notes]"
    end
  end
end
