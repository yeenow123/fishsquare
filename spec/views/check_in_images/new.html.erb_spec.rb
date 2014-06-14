require 'rails_helper'

RSpec.describe "check_in_images/new", :type => :view do
  before(:each) do
    assign(:check_in_image, CheckInImage.new(
      :check_in_id => 1,
      :description => "MyText"
    ))
  end

  it "renders new check_in_image form" do
    render

    assert_select "form[action=?][method=?]", check_in_images_path, "post" do

      assert_select "input#check_in_image_check_in_id[name=?]", "check_in_image[check_in_id]"

      assert_select "textarea#check_in_image_description[name=?]", "check_in_image[description]"
    end
  end
end
