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

  it 'is not valid without a valid first_name attribute' do
    expect(build(:user, first_name: nil)).to_not be_valid
  end

  it 'is not valid without a valid last_name attribute' do
    expect(build(:user, last_name: nil)).to_not be_valid
  end

  describe '.full_name' do
    it 'should return the first_name and last_name attributes as a concatenated string' do
      @user           = build(:user)
      @user_full_name = @user.first_name + ' ' + @user.last_name

      expect(@user.full_name).to eq(@user_full_name)
    end
  end
end
