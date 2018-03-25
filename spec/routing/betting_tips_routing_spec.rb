require "rails_helper"

RSpec.describe BettingTipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/betting_tips").to route_to("betting_tips#index")
    end

    it "routes to #new" do
      expect(:get => "/betting_tips/new").to route_to("betting_tips#new")
    end

    it "routes to #show" do
      expect(:get => "/betting_tips/1").to route_to("betting_tips#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/betting_tips/1/edit").to route_to("betting_tips#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/betting_tips").to route_to("betting_tips#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/betting_tips/1").to route_to("betting_tips#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/betting_tips/1").to route_to("betting_tips#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/betting_tips/1").to route_to("betting_tips#destroy", :id => "1")
    end

  end
end
