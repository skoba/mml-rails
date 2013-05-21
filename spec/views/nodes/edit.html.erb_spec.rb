require 'spec_helper'

describe "nodes/edit" do
  before(:each) do
    @node = assign(:node, stub_model(Node,
      :path => "MyString",
      :atcode => "MyString",
      :rmclass => "MyString",
      :txt_value => "MyString",
      :int_value => 1,
      :flt_value => 1.5
    ))
  end

  it "renders the edit node form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", node_path(@node), "post" do
      assert_select "input#node_path[name=?]", "node[path]"
      assert_select "input#node_atcode[name=?]", "node[atcode]"
      assert_select "input#node_rmclass[name=?]", "node[rmclass]"
      assert_select "input#node_txt_value[name=?]", "node[txt_value]"
      assert_select "input#node_int_value[name=?]", "node[int_value]"
      assert_select "input#node_flt_value[name=?]", "node[flt_value]"
    end
  end
end
