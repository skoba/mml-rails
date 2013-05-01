require 'spec_helper'

describe "mmlvs/compare_vs_lb" do
  before do
    visit 'mmlvs/compare_vs_lb'
  end

  it 'shows table with comparison of mmlVs and mmlLb' do
    page.should have_content 'mmlVs'
  end
end
