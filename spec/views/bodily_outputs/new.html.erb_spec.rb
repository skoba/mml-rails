require 'spec_helper'

describe "bodily_outputs/new" do
  before(:each) do
    assign(:bodily_output, stub_model(BodilyOutput,
      :type => "",
      :volume => 1.5,
      :unit => "MyString",
      :color => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new bodily_output form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bodily_outputs_path, "post" do
      assert_select "input#bodily_output_type[name=?]", "bodily_output[type]"
      assert_select "input#bodily_output_volume[name=?]", "bodily_output[volume]"
      assert_select "input#bodily_output_unit[name=?]", "bodily_output[unit]"
      assert_select "input#bodily_output_color[name=?]", "bodily_output[color]"
      assert_select "input#bodily_output_status[name=?]", "bodily_output[status]"
    end
  end
end
