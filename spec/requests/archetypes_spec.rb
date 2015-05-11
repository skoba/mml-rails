require 'spec_helper'

describe "Archetypes" do
  describe "GET /archetypes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get archetypes_path
      expect(response.status).to be(200)
    end
  end
end
