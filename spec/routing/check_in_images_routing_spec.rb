require "rails_helper"

RSpec.describe CheckInImagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/check_in_images").to route_to("check_in_images#index")
    end

    it "routes to #new" do
      expect(:get => "/check_in_images/new").to route_to("check_in_images#new")
    end

    it "routes to #show" do
      expect(:get => "/check_in_images/1").to route_to("check_in_images#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/check_in_images/1/edit").to route_to("check_in_images#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/check_in_images").to route_to("check_in_images#create")
    end

    it "routes to #update" do
      expect(:put => "/check_in_images/1").to route_to("check_in_images#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/check_in_images/1").to route_to("check_in_images#destroy", :id => "1")
    end

  end
end
