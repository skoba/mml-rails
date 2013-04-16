require "spec_helper"

describe IntakesController do
  describe "routing" do

    it "routes to #index" do
      get("/intakes").should route_to("intakes#index")
    end

    it "routes to #new" do
      get("/intakes/new").should route_to("intakes#new")
    end

    it "routes to #show" do
      get("/intakes/1").should route_to("intakes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/intakes/1/edit").should route_to("intakes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/intakes").should route_to("intakes#create")
    end

    it "routes to #update" do
      put("/intakes/1").should route_to("intakes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/intakes/1").should route_to("intakes#destroy", :id => "1")
    end

  end
end
