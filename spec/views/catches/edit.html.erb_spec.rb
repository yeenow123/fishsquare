require 'rails_helper'

RSpec.describe "catches/edit", :type => :view do
  before(:each) do
    @catch = assign(:catch, Catch.create!(
      :check_in_id => 1,
      :species => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit catch form" do
    render

    assert_select "form[action=?][method=?]", catch_path(@catch), "post" do

      assert_select "input#catch_check_in_id[name=?]", "catch[check_in_id]"

      assert_select "input#catch_species[name=?]", "catch[species]"

      assert_select "textarea#catch_notes[name=?]", "catch[notes]"
    end
  end
end
