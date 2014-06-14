require 'rails_helper'

RSpec.describe "check_ins/new", :type => :view do
  before(:each) do
    assign(:check_in, CheckIn.new(
      :lat => 1.5,
      :lng => 1.5,
      :type => "",
      :fishing_type => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new check_in form" do
    render

    assert_select "form[action=?][method=?]", check_ins_path, "post" do

      assert_select "input#check_in_lat[name=?]", "check_in[lat]"

      assert_select "input#check_in_lng[name=?]", "check_in[lng]"

      assert_select "input#check_in_type[name=?]", "check_in[type]"

      assert_select "input#check_in_fishing_type[name=?]", "check_in[fishing_type]"

      assert_select "textarea#check_in_notes[name=?]", "check_in[notes]"
    end
  end
end
