require 'spec_helper'

describe "mmlvs/specification" do
  it 'should show mmlVs specification document' do
    render
    expect(rendered).to include 'mmlVs'
  end
end
