require 'rails_helper'

RSpec.describe "Vessels", :type => :request do
  describe "GET /vessels" do
    it "works! (now write some real specs)" do
      get vessels_path
      expect(response.status).to be(200)
    end
  end
end
