require 'spec_helper'

describe "mmlcas/new" do
  before(:each) do
    assign(:mmlca, stub_model(Mmlca).as_new_record)
  end

  it "renders new mmlca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mmlcas_path, "post" do
    end
  end
end
