require 'spec_helper'

describe "observations/new" do
  before(:each) do
    assign(:observation, double(Observation,
      :item => "MyString",
      :value => 1.5,
      :unit => "MyString"
    ).as_new_record)
  end

  it "renders new observation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", observations_path, "post" do
      assert_select "input#observation_item[name=?]", "observation[item]"
      assert_select "input#observation_value[name=?]", "observation[value]"
      assert_select "input#observation_unit[name=?]", "observation[unit]"
    end
  end
end
