require 'rails_helper'

RSpec.describe "catches/new", :type => :view do
  before(:each) do
    assign(:catch, Catch.new(
      :check_in_id => 1,
      :species => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new catch form" do
    render

    assert_select "form[action=?][method=?]", catches_path, "post" do

      assert_select "input#catch_check_in_id[name=?]", "catch[check_in_id]"

      assert_select "input#catch_species[name=?]", "catch[species]"

      assert_select "textarea#catch_notes[name=?]", "catch[notes]"
    end
  end
end
