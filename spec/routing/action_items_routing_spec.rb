require "rails_helper"

RSpec.describe ActionItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/action_items").to route_to("action_items#index")
    end

    it "routes to #new" do
      expect(:get => "/action_items/new").to route_to("action_items#new")
    end

    it "routes to #show" do
      expect(:get => "/action_items/1").to route_to("action_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/action_items/1/edit").to route_to("action_items#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/action_items").to route_to("action_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/action_items/1").to route_to("action_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/action_items/1").to route_to("action_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/action_items/1").to route_to("action_items#destroy", :id => "1")
    end
  end
end
