require 'spec_helper'

describe Mmlvs do
  let(:mmlvs) { FactoryGirl.create(:mmlvs_with_vital_signs) }

  it 'should has vital signs' do
    expect(mmlvs.vital_signs.first.val).to eq 130
  end

  it 'sbp shows associated sbp record if exist' do
    expect(mmlvs.sbp.unit).to eq 'mmHg'
  end

  it 'observed date should be 2013-11-07T09:45:00' do
    expect(mmlvs.observed_time.to_s).to eq '2013-11-07 09:45:00 UTC'
  end
end
