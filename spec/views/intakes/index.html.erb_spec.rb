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
  end
end
