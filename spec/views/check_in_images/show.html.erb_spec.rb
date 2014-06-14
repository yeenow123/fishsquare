require 'rails_helper'

RSpec.describe "check_in_images/show", :type => :view do
  before(:each) do
    @check_in_image = assign(:check_in_image, CheckInImage.create!(
      :check_in_id => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
