require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
