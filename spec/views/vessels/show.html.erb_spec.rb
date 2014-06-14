require 'rails_helper'

RSpec.describe "vessels/show", :type => :view do
  before(:each) do
    @vessel = assign(:vessel, Vessel.create!(
      :check_in_id => 1,
      :vessel_type => "Vessel Type",
      :vessel_number => "Vessel Number",
      :vessel_name => "Vessel Name",
      :estimated_crew => "Estimated Crew",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Vessel Type/)
    expect(rendered).to match(/Vessel Number/)
    expect(rendered).to match(/Vessel Name/)
    expect(rendered).to match(/Estimated Crew/)
    expect(rendered).to match(/MyText/)
  end
end
