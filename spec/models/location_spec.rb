require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:location)).to be_valid
  end

  it 'is not valid without a primary address attribute' do
    expect(build(:location, primary_address: nil)).to_not be_valid
  end

  it 'is not valid without a city attribute' do
    expect(build(:location, city: nil)).to_not be_valid
  end

  it 'is not valid without a state attribute' do
    expect(build(:location, state: nil)).to_not be_valid
  end
end
