require "spec_helper"

describe MmlcasController do
  describe "routing" do

    it "routes to #index" do
      get("/mmlcas").should route_to("mmlcas#index")
    end

    it "routes to #new" do
      get("/mmlcas/new").should route_to("mmlcas#new")
    end

    it "routes to #show" do
      get("/mmlcas/1").should route_to("mmlcas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mmlcas/1/edit").should route_to("mmlcas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mmlcas").should route_to("mmlcas#create")
    end

    it "routes to #update" do
      put("/mmlcas/1").should route_to("mmlcas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mmlcas/1").should route_to("mmlcas#destroy", :id => "1")
    end

  end
end
