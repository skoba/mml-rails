require 'spec_helper'

describe "mmlcas/show" do
  before(:each) do
    @mmlca = assign(:mmlca, stub_model(Mmlca))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
