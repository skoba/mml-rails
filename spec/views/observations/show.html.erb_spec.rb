require 'spec_helper'

describe "observations/show" do
  before(:each) do
    @observation = assign(:observation, stub_model(Observation,
      :item => "Item",
      :value => 1.5,
      :unit => "Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Unit/)
  end
end
