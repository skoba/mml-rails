require 'spec_helper'

describe "mmlca/show" do
  before(:each) do
    @mmlca = assign(:mmlca, stub_model(Mmlca))
  end

  it "renders attributes in <p>" do
    render
  end
end
