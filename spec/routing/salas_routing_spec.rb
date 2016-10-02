require "rails_helper"

RSpec.describe SalasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/salas").to route_to("salas#index")
    end

    it "routes to #new" do
      expect(:get => "/salas/new").to route_to("salas#new")
    end

    it "routes to #show" do
      expect(:get => "/salas/1").to route_to("salas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/salas/1/edit").to route_to("salas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/salas").to route_to("salas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/salas/1").to route_to("salas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/salas/1").to route_to("salas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/salas/1").to route_to("salas#destroy", :id => "1")
    end

  end
end
