require 'spec_helper'

describe "observations/edit" do
  before(:each) do
    @observation = assign(:observation, stub_model(Observation,
      :item => "MyString",
      :value => 1.5,
      :unit => "MyString"
    ))
  end

  it "renders the edit observation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", observation_path(@observation), "post" do
      assert_select "input#observation_item[name=?]", "observation[item]"
      assert_select "input#observation_value[name=?]", "observation[value]"
      assert_select "input#observation_unit[name=?]", "observation[unit]"
    end
  end
end
