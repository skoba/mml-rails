require 'spec_helper'

describe "observations/index" do
  before(:each) do
    assign(:observations, [
      stub_model(Observation,
        :item => "Item",
        :value => 1.5,
        :unit => "Unit"
      ),
      stub_model(Observation,
        :item => "Item",
        :value => 1.5,
        :unit => "Unit"
      )
    ])
  end

  it "renders a list of observations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
