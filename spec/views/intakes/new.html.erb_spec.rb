require 'spec_helper'

describe "intakes/new" do
  before(:each) do
    assign(:intake, stub_model(Intake).as_new_record)
  end

  it "renders new intake form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", intakes_path, "post" do
    end
  end
end
