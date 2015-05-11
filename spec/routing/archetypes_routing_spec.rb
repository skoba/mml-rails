require "spec_helper"

describe ArchetypesController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/archetypes")).to route_to("archetypes#index")
    end

    it "routes to #new" do
      expect(get("/archetypes/new")).to route_to("archetypes#new")
    end

    it "routes to #show" do
      expect(get("/archetypes/1")).to route_to("archetypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/archetypes/1/edit")).to route_to("archetypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/archetypes")).to route_to("archetypes#create")
    end

    it "routes to #update" do
      expect(put("/archetypes/1")).to route_to("archetypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/archetypes/1")).to route_to("archetypes#destroy", :id => "1")
    end

  end
end
