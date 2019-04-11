require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:account)).to be_valid
  end

  it 'is not valid without a type attribute' do
    expect(build(:account, account_type: nil)).to_not be_valid
  end

  it 'is not valid without a username attribute' do
    expect(build(:account, username: nil)).to_not be_valid
  end

  it 'is not valid without a password attribute' do
    expect(build(:account, password: nil)).to_not be_valid
  end
end
