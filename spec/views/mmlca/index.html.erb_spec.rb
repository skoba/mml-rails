require 'spec_helper'

describe "mmlca/index" do
  before(:each) do
    assign(:mmlca, [
      stub_model(Mmlca),
      stub_model(Mmlca)
    ])
  end

  it "renders a list of mmlca" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
