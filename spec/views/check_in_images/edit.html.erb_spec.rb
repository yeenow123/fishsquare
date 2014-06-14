require 'rails_helper'

RSpec.describe "check_in_images/edit", :type => :view do
  before(:each) do
    @check_in_image = assign(:check_in_image, CheckInImage.create!(
      :check_in_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit check_in_image form" do
    render

    assert_select "form[action=?][method=?]", check_in_image_path(@check_in_image), "post" do

      assert_select "input#check_in_image_check_in_id[name=?]", "check_in_image[check_in_id]"

      assert_select "textarea#check_in_image_description[name=?]", "check_in_image[description]"
    end
  end
end
