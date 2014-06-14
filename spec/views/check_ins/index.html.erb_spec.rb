require 'rails_helper'

RSpec.describe "check_ins/index", :type => :view do
  before(:each) do
    assign(:check_ins, [
      CheckIn.create!(
        :lat => 1.5,
        :lng => 1.5,
        :type => "Type",
        :fishing_type => "Fishing Type",
        :notes => "MyText"
      ),
      CheckIn.create!(
        :lat => 1.5,
        :lng => 1.5,
        :type => "Type",
        :fishing_type => "Fishing Type",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of check_ins" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Fishing Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
