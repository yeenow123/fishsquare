require 'rails_helper'

RSpec.describe "CheckIns", :type => :request do
  describe "GET /check_ins" do
    it "works! (now write some real specs)" do
      get check_ins_path
      expect(response.status).to be(200)
    end
  end
end
