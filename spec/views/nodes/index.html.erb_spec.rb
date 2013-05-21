require 'spec_helper'

describe "nodes/index" do
  before(:each) do
    assign(:nodes, [
      stub_model(Node,
        :path => "Path",
        :atcode => "Atcode",
        :rmclass => "Rmclass",
        :txt_value => "Txt Value",
        :int_value => 1,
        :flt_value => 1.5
      ),
      stub_model(Node,
        :path => "Path",
        :atcode => "Atcode",
        :rmclass => "Rmclass",
        :txt_value => "Txt Value",
        :int_value => 1,
        :flt_value => 1.5
      )
    ])
  end

  it "renders a list of nodes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "Atcode".to_s, :count => 2
    assert_select "tr>td", :text => "Rmclass".to_s, :count => 2
    assert_select "tr>td", :text => "Txt Value".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
