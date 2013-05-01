require 'spec_helper'

describe "mmlvs/compare_vs_lb" do
  it 'shows table with comparison of mmlVs and mmlLb' do
    render
    expect(rendered).to include 'mmlVs'
  end
end
