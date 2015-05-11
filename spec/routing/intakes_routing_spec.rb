require "spec_helper"

describe IntakesController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/intakes")).to route_to("intakes#index")
    end

    it "routes to #new" do
      expect(get("/intakes/new")).to route_to("intakes#new")
    end

    it "routes to #show" do
      expect(get("/intakes/1")).to route_to("intakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/intakes/1/edit")).to route_to("intakes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/intakes")).to route_to("intakes#create")
    end

    it "routes to #update" do
      expect(put("/intakes/1")).to route_to("intakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/intakes/1")).to route_to("intakes#destroy", :id => "1")
    end

  end
end
