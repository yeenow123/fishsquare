require 'rails_helper'

RSpec.describe "catches/index", :type => :view do
  before(:each) do
    assign(:catches, [
      Catch.create!(
        :check_in_id => 1,
        :species => "Species",
        :notes => "MyText"
      ),
      Catch.create!(
        :check_in_id => 1,
        :species => "Species",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of catches" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
