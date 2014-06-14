require 'rails_helper'

RSpec.describe "CheckInImages", :type => :request do
  describe "GET /check_in_images" do
    it "works! (now write some real specs)" do
      get check_in_images_path
      expect(response.status).to be(200)
    end
  end
end
