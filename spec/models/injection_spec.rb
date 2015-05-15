require 'rails_helper'

RSpec.describe Injection, type: :model do
  let(:injection) { create :injection }

  it 'should be valid' do
    expect(injection.regimen.size).to eq 3
  end
end
