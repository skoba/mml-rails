require 'spec_helper'

describe "mmlcas/edit" do
  before(:each) do
    @mmlca = assign(:mmlca, stub_model(Mmlca))
  end

  it "renders the edit mmlca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mmlca_path(@mmlca), "post" do
    end
  end
end
