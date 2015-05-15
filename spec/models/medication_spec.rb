require 'rails_helper'

RSpec.describe Medication, type: :model do
  let(:medication) { build :meptin }

  it "should be valid " do
    expect(medication).to be_valid
  end
end
