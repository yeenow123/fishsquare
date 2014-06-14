require 'rails_helper'

RSpec.describe "check_in_images/index", :type => :view do
  before(:each) do
    assign(:check_in_images, [
      CheckInImage.create!(
        :check_in_id => 1,
        :description => "MyText"
      ),
      CheckInImage.create!(
        :check_in_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of check_in_images" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
