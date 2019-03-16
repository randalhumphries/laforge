require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'is valid with valid attributes' do
    expect(build(:user)).to be_valid
  end

  it 'is not valid without a valid email attribute' do
    expect(build(:user, email: nil)).to_not be_valid
  end

  it 'is not valid without a valid password attribute' do
    expect(build(:user, password: nil)).to_not be_valid
  end

  it 'is not valid without a valid company attribute' do
    expect(build(:user, company: nil)).to_not be_valid
  end
end
