require 'rails_helper'

RSpec.describe Prescription, type: :model do
  let(:prescription) { create :prescription }

  it "should be valid" do
    expect(prescription).to be_valid
  end

  it 'should have 4 medications' do
    expect(prescription.medications.size).to eq 4
  end

  describe '#batch' do
    it 'should have 3 batches' do
      expect(prescription.batch.size).to eq 3
    end
  end
end
