require 'spec_helper'

describe VitalSign do
  let(:vital_sign) { FactoryGirl.create(:vital_sign) }
  let(:sbp) {FactoryGirl.create(:vital_sign)}
  
  it 'should generated properly' do
    expect(vital_sign.type).to match /Systolic blood pressure/
  end
end
