require 'rails_helper'

RSpec.describe "vessels/index", :type => :view do
  before(:each) do
    assign(:vessels, [
      Vessel.create!(
        :check_in_id => 1,
        :vessel_type => "Vessel Type",
        :vessel_number => "Vessel Number",
        :vessel_name => "Vessel Name",
        :estimated_crew => "Estimated Crew",
        :notes => "MyText"
      ),
      Vessel.create!(
        :check_in_id => 1,
        :vessel_type => "Vessel Type",
        :vessel_number => "Vessel Number",
        :vessel_name => "Vessel Name",
        :estimated_crew => "Estimated Crew",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of vessels" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Vessel Type".to_s, :count => 2
    assert_select "tr>td", :text => "Vessel Number".to_s, :count => 2
    assert_select "tr>td", :text => "Vessel Name".to_s, :count => 2
    assert_select "tr>td", :text => "Estimated Crew".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
