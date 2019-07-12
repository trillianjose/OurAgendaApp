require "rails_helper"

RSpec.describe AgendaItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/agenda_items").to route_to("agenda_items#index")
    end

    it "routes to #new" do
      expect(:get => "/agenda_items/new").to route_to("agenda_items#new")
    end

    it "routes to #show" do
      expect(:get => "/agenda_items/1").to route_to("agenda_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/agenda_items/1/edit").to route_to("agenda_items#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/agenda_items").to route_to("agenda_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/agenda_items/1").to route_to("agenda_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/agenda_items/1").to route_to("agenda_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/agenda_items/1").to route_to("agenda_items#destroy", :id => "1")
    end
  end
end
