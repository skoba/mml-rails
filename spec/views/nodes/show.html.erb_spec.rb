require 'spec_helper'

describe "nodes/show" do
  before(:each) do
    @node = assign(:node, stub_model(Node,
      :path => "Path",
      :atcode => "Atcode",
      :rmclass => "Rmclass",
      :txt_value => "Txt Value",
      :int_value => 1,
      :flt_value => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Path/)
    rendered.should match(/Atcode/)
    rendered.should match(/Rmclass/)
    rendered.should match(/Txt Value/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
  end
end
