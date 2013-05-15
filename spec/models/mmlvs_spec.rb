require 'spec_helper'

describe Mmlvs do
  let(:mmlvs) { FactoryGirl.create(:mmlvs_with_vital_signs) }

  it 'should has vital signs' do
    expect(mmlvs.vital_signs.first.val).to eq 130
  end

  it 'sbp shows associated sbp record if exist' do
    expect(mmlvs.sbp.unit).to eq 'mmHg'
  end
end
