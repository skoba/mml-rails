require 'spec_helper'

describe "intakes/index" do
  before(:each) do
    assign(:intakes, [
      stub_model(Intake),
      stub_model(Intake)
    ])
  end

  it "renders a list of intakes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
