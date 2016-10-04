require "rails_helper"

RSpec.describe ApostaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aposta").to route_to("aposta#index")
    end

    it "routes to #new" do
      expect(:get => "/aposta/new").to route_to("aposta#new")
    end

    it "routes to #show" do
      expect(:get => "/aposta/1").to route_to("aposta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aposta/1/edit").to route_to("aposta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aposta").to route_to("aposta#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/aposta/1").to route_to("aposta#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/aposta/1").to route_to("aposta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aposta/1").to route_to("aposta#destroy", :id => "1")
    end

  end
end
