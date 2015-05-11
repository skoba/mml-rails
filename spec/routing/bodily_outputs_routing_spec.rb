require "spec_helper"

describe BodilyOutputsController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/bodily_outputs")).to route_to("bodily_outputs#index")
    end

    it "routes to #new" do
      expect(get("/bodily_outputs/new")).to route_to("bodily_outputs#new")
    end

    it "routes to #show" do
      expect(get("/bodily_outputs/1")).to route_to("bodily_outputs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/bodily_outputs/1/edit")).to route_to("bodily_outputs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/bodily_outputs")).to route_to("bodily_outputs#create")
    end

    it "routes to #update" do
      expect(put("/bodily_outputs/1")).to route_to("bodily_outputs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/bodily_outputs/1")).to route_to("bodily_outputs#destroy", :id => "1")
    end

  end
end
