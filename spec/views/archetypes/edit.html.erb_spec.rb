require 'spec_helper'

describe "archetypes/edit" do
  before(:each) do
    @archetype = assign(:archetype, stub_model(Archetype,
      :uid => "MyString",
      :archetypeid => "MyString"
    ))
  end

  it "renders the edit archetype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", archetype_path(@archetype), "post" do
      assert_select "input#archetype_uid[name=?]", "archetype[uid]"
      assert_select "input#archetype_archetypeid[name=?]", "archetype[archetypeid]"
    end
  end
end
