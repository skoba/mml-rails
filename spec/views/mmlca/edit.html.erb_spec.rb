require 'spec_helper'

describe "mmlca/edit" do
  before(:each) do
    @mmlca = assign(:mmlca, stub_model(Mmlca))
  end

  it "renders the edit mmlca form" do
    render

    assert_select "form[action=?][method=?]", mmlca_path(@mmlca), "post" do
    end
  end
end
