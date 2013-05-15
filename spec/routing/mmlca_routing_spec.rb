require "spec_helper"

describe MmlcaController do
  describe "routing" do

    it "routes to #index" do
      get("/mmlca").should route_to("mmlca#index")
    end

    it "routes to #new" do
      get("/mmlca/new").should route_to("mmlca#new")
    end

    it "routes to #show" do
      get("/mmlca/1").should route_to("mmlca#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mmlca/1/edit").should route_to("mmlca#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mmlca").should route_to("mmlca#create")
    end

    it "routes to #update" do
      put("/mmlca/1").should route_to("mmlca#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mmlca/1").should route_to("mmlca#destroy", :id => "1")
    end

  end
end
