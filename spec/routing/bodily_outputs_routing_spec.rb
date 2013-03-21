require "spec_helper"

describe BodilyOutputsController do
  describe "routing" do

    it "routes to #index" do
      get("/bodily_outputs").should route_to("bodily_outputs#index")
    end

    it "routes to #new" do
      get("/bodily_outputs/new").should route_to("bodily_outputs#new")
    end

    it "routes to #show" do
      get("/bodily_outputs/1").should route_to("bodily_outputs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bodily_outputs/1/edit").should route_to("bodily_outputs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bodily_outputs").should route_to("bodily_outputs#create")
    end

    it "routes to #update" do
      put("/bodily_outputs/1").should route_to("bodily_outputs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bodily_outputs/1").should route_to("bodily_outputs#destroy", :id => "1")
    end

  end
end
