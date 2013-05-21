require 'spec_helper'

describe "archetypes/index" do
  before(:each) do
    assign(:archetypes, [
      stub_model(Archetype,
        :uid => "Uid",
        :archetypeid => "Archetypeid"
      ),
      stub_model(Archetype,
        :uid => "Uid",
        :archetypeid => "Archetypeid"
      )
    ])
  end

  it "renders a list of archetypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Archetypeid".to_s, :count => 2
  end
end
