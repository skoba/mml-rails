require 'rails_helper'

RSpec.describe Regimen, type: :model do
  let(:regimen) { build :lactec }

  it "should be valid " do
    expect(regimen).to be_valid
  end
end
