require 'rails_helper'

RSpec.describe "catches/show", :type => :view do
  before(:each) do
    @catch = assign(:catch, Catch.create!(
      :check_in_id => 1,
      :species => "Species",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Species/)
    expect(rendered).to match(/MyText/)
  end
end
