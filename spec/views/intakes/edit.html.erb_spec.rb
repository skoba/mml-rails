require 'spec_helper'

describe "intakes/edit" do
  before(:each) do
    @intake = assign(:intake, stub_model(Intake))
  end

  it "renders the edit intake form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", intake_path(@intake), "post" do
    end
  end
end
