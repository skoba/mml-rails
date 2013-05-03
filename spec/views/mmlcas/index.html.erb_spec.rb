require 'spec_helper'

describe "mmlcas/index" do
  before(:each) do
    assign(:mmlcas, [
      stub_model(Mmlca),
      stub_model(Mmlca)
    ])
  end

  it "renders a list of mmlcas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
