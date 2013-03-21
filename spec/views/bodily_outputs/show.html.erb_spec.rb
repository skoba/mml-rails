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
    rendered.should match(/Type/)
    rendered.should match(/1.5/)
    rendered.should match(/Unit/)
    rendered.should match(/Color/)
    rendered.should match(/Status/)
  end
end
