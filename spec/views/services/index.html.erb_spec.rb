require 'spec_helper'

describe "services/index" do
  before(:each) do
    assign(:services, [
      stub_model(Service,
        :type => "Type"
      ),
      stub_model(Service,
        :type => "Type"
      )
    ])
  end

  it "renders a list of services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
