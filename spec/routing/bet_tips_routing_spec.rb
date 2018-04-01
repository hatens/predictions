require "rails_helper"

RSpec.describe BetTipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bet_tips").to route_to("bet_tips#index")
    end

    it "routes to #new" do
      expect(:get => "/bet_tips/new").to route_to("bet_tips#new")
    end

    it "routes to #show" do
      expect(:get => "/bet_tips/1").to route_to("bet_tips#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bet_tips/1/edit").to route_to("bet_tips#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bet_tips").to route_to("bet_tips#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bet_tips/1").to route_to("bet_tips#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bet_tips/1").to route_to("bet_tips#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bet_tips/1").to route_to("bet_tips#destroy", :id => "1")
    end

  end
end
