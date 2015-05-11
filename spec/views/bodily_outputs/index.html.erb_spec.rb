require 'spec_helper'

describe "bodily_outputs/index" do
  before(:each) do
    assign(:bodily_outputs, [
      double(BodilyOutput,
        :type => "Type",
        :volume => 1.5,
        :unit => "Unit",
        :color => "Color",
        :status => "Status"
      ),
      double(BodilyOutput,
        :type => "Type",
        :volume => 1.5,
        :unit => "Unit",
        :color => "Color",
        :status => "Status"
      )
    ])
  end

  it "renders a list of bodily_outputs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
