require 'spec_helper'

describe "intakes/show" do
  before(:each) do
    @intake = assign(:intake, stub_model(Intake))
  end

  it "renders attributes in <p>" do
    render
  end
end
