require "spec_helper"

describe NodesController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/nodes")).to route_to("nodes#index")
    end

    it "routes to #new" do
      expect(get("/nodes/new")).to route_to("nodes#new")
    end

    it "routes to #show" do
      expect(get("/nodes/1")).to route_to("nodes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/nodes/1/edit")).to route_to("nodes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/nodes")).to route_to("nodes#create")
    end

    it "routes to #update" do
      expect(put("/nodes/1")).to route_to("nodes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/nodes/1")).to route_to("nodes#destroy", :id => "1")
    end

  end
end
