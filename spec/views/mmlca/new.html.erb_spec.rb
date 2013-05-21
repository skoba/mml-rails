require 'spec_helper'

describe "mmlca/new" do
  before(:each) do
    assign(:mmlca, stub_model(Mmlca).as_new_record)
  end

  it "renders new mmlca form" do
    render

    assert_select "form[action=?][method=?]", mmlca_index_path, "post" do
    end
  end
end
