require 'spec_helper'

describe "bodily_outputs/show" do
  before(:each) do
    @bodily_output = assign(:bodily_output, stub_model(BodilyOutput,
      :type => "Type",
      :volume => 1.5,
      :unit => "Unit",
      :color => "Color",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Status/)
  end
end
