require 'spec_helper'

describe "archetypes/new" do
  before(:each) do
    assign(:archetype, stub_model(Archetype,
      :uid => "MyString",
      :archetypeid => "MyString"
    ).as_new_record)
  end

  it "renders new archetype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", archetypes_path, "post" do
      assert_select "input#archetype_uid[name=?]", "archetype[uid]"
      assert_select "input#archetype_archetypeid[name=?]", "archetype[archetypeid]"
    end
  end
end
