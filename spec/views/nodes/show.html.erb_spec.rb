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
    expect(rendered).to match(/Path/)
    expect(rendered).to match(/Atcode/)
    expect(rendered).to match(/Rmclass/)
    expect(rendered).to match(/Txt Value/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
  end
end
