require 'spec_helper'

describe "mmlvs/compare_vs_lb" do
  it 'shows table with comparison of mmlVs and mmlLb' do
    visit '/mmlvs/compare_vs_lb'
    expect(page).to have_content 'mmlVs'
  end
end
