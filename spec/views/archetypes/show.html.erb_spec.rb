require 'spec_helper'

describe "archetypes/show" do
  before(:each) do
    @archetype = assign(:archetype, stub_model(Archetype,
      :uid => "Uid",
      :archetypeid => "Archetypeid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uid/)
    rendered.should match(/Archetypeid/)
  end
end
