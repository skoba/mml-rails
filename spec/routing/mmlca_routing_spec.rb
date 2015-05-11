require "spec_helper"

describe MmlcaController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/mmlca")).to route_to("mmlca#index")
    end

    it "routes to #new" do
      expect(get("/mmlca/new")).to route_to("mmlca#new")
    end

    it "routes to #show" do
      expect(get("/mmlca/1")).to route_to("mmlca#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/mmlca/1/edit")).to route_to("mmlca#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/mmlca")).to route_to("mmlca#create")
    end

    it "routes to #update" do
      expect(put("/mmlca/1")).to route_to("mmlca#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/mmlca/1")).to route_to("mmlca#destroy", :id => "1")
    end

  end
end
